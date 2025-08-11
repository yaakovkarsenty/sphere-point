
#include "stm32l4xx_hal.h"
#include "lr11xx_hal.h"
#include "main.h"
#include "smtc_hal_mcu_gpio.h"
#include "smtc_hal_mcu_gpio_stm32l4.h"



typedef struct
{
    SPI_HandleTypeDef* hspi;
    GPIO_TypeDef* nss_port;
    uint16_t nss_pin;
    GPIO_TypeDef* reset_port;
    uint16_t reset_pin;
    GPIO_TypeDef* busy_port;
    uint16_t busy_pin;
} lr11xx_hal_context_t;

lr11xx_hal_status_t lr11xx_hal_write( const void* context, const uint8_t* command, const uint16_t command_length,
                                      const uint8_t* data, const uint16_t data_length )
{

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low

    if (HAL_SPI_Transmit(&hspi1, (uint8_t*)command, command_length, HAL_MAX_DELAY) != HAL_OK)
        return LR11XX_HAL_STATUS_ERROR;

    if (data_length > 0 && HAL_SPI_Transmit(&hspi1, (uint8_t*)data, data_length, HAL_MAX_DELAY) != HAL_OK)
        return LR11XX_HAL_STATUS_ERROR;

    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET); // NSS high

    return LR11XX_HAL_STATUS_OK;
}


lr11xx_hal_status_t lr11xx_hal_read( const void* context, const uint8_t* command, const uint16_t command_length,
                                     uint8_t* data, const uint16_t data_length )
{

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low

    if (HAL_SPI_Transmit(&hspi1, (uint8_t*)command, command_length, HAL_MAX_DELAY) != HAL_OK)
        return LR11XX_HAL_STATUS_ERROR;
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET); // NSS high

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low
    if (HAL_SPI_Receive(&hspi1, data, data_length, HAL_MAX_DELAY) != HAL_OK)
        return LR11XX_HAL_STATUS_ERROR;
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET); // NSS high

    return LR11XX_HAL_STATUS_OK;
}

lr11xx_hal_status_t lr11xx_hal_reset( const void* context )
{

//    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low
    HAL_GPIO_WritePin(LR1121_RESET_PORT, LR1121_RESET_PIN, GPIO_PIN_RESET);
    HAL_Delay(1); // Hold low for at least 1ms
    HAL_GPIO_WritePin(LR1121_RESET_PORT, LR1121_RESET_PIN, GPIO_PIN_SET);
    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);

    return LR11XX_HAL_STATUS_OK;
}

lr11xx_hal_status_t lr11xx_hal_wakeup( const void* context )
{
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);
    HAL_Delay(1); // Pulse NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    // Wait for BUSY to go low
    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);

    return LR11XX_HAL_STATUS_OK;
}




typedef struct
{
    uint32_t syscfg_exti_port;
    uint32_t syscfg_exti_line;
    uint32_t exti_line;
    int      irq_number;
} smtc_hal_mcu_gpio_irq_exti_cfg_t;

typedef struct smtc_hal_mcu_gpio_irq_cfg_s
{
    bool                             is_irq_enabled;
    smtc_hal_mcu_gpio_input_cfg_t    input_cfg;
    smtc_hal_mcu_gpio_irq_exti_cfg_t exti_cfg;
} smtc_hal_mcu_gpio_irq_cfg_t;

struct smtc_hal_mcu_gpio_inst_s
{
    bool                        is_cfged;
    GPIO_TypeDef*               port;
    uint32_t                    pin;
    bool                        is_irq_cfged;
    smtc_hal_mcu_gpio_irq_cfg_t irq_cfg;
};

#define SMTC_HAL_MCU_GPIO_STM32L4_ARRAY_SIZE 16
/**
 * @brief Array to store the configuration of initialized GPIO with IRQ
 */
typedef struct smtc_hal_mcu_gpio_inst_s* smtc_hal_mcu_gpio_inst_t;

smtc_hal_mcu_status_t smtc_hal_mcu_gpio_set_state( smtc_hal_mcu_gpio_inst_t inst, smtc_hal_mcu_gpio_state_t state )
{
//    if( smtc_hal_mcu_gpio_stm32l4_is_real_inst( inst ) == false )
//    {
//        return SMTC_HAL_MCU_STATUS_BAD_PARAMETERS;
//    }

//	printf("port %d , pin %d, state %d \r\n", inst->port, inst->pin, state);
    switch( state )
    {
    case SMTC_HAL_MCU_GPIO_STATE_HIGH:
    {
        HAL_GPIO_WritePin(inst->port, inst->pin, GPIO_PIN_SET);
        break;
    }
    case SMTC_HAL_MCU_GPIO_STATE_LOW:
    {
        HAL_GPIO_WritePin( inst->port, inst->pin, GPIO_PIN_RESET );
        break;
    }
    default:
    {
        return SMTC_HAL_MCU_STATUS_BAD_PARAMETERS;
    }
    }

    return SMTC_HAL_MCU_STATUS_OK;
}

smtc_hal_mcu_status_t smtc_hal_mcu_gpio_get_state( smtc_hal_mcu_gpio_inst_t inst, smtc_hal_mcu_gpio_state_t* state )
{
//    if( smtc_hal_mcu_gpio_stm32l4_is_real_inst( inst ) == false )
//    {
//        return SMTC_HAL_MCU_STATUS_BAD_PARAMETERS;
//    }
//
//    const uint32_t pin_mode = LL_GPIO_GetPinMode( inst->port, inst->pin );
//
//    if( pin_mode == LL_GPIO_MODE_OUTPUT )
//    {
//        *state = ( LL_GPIO_IsOutputPinSet( inst->port, inst->pin ) == 1 ) ? SMTC_HAL_MCU_GPIO_STATE_HIGH
//                                                                          : SMTC_HAL_MCU_GPIO_STATE_LOW;
//    }
//    else if( pin_mode == LL_GPIO_MODE_INPUT )
//    {
//        *state = ( LL_GPIO_IsInputPinSet( inst->port, inst->pin ) == 1 ) ? SMTC_HAL_MCU_GPIO_STATE_HIGH
//                                                                         : SMTC_HAL_MCU_GPIO_STATE_LOW;
//    }
//    else
//    {
//        return SMTC_HAL_MCU_STATUS_NOT_INIT;
//    }
//
    return SMTC_HAL_MCU_STATUS_OK;
}


#define LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH ( 2 )
#define LR11XX_SYSTEM_GET_VERSION_OC  0x0101

lr11xx_status_t lr11xx_system_get_version( const void* context, lr11xx_system_version_t* version )
{
    const uint8_t cbuffer[LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH] = {
        ( uint8_t ) ( LR11XX_SYSTEM_GET_VERSION_OC >> 8 ),
        ( uint8_t ) ( LR11XX_SYSTEM_GET_VERSION_OC >> 0 ),
    };
    uint8_t rbuffer[LR11XX_SYSTEM_VERSION_LENGTH] = { 0x00 };

    const lr11xx_status_t status = ( lr11xx_status_t ) lr11xx_hal_read(
        context, cbuffer, LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH, rbuffer, LR11XX_SYSTEM_VERSION_LENGTH );

    if( status == LR11XX_STATUS_OK )
    {
        version->hw   = rbuffer[0];
        version->type = ( lr11xx_system_version_type_t ) rbuffer[1];
        version->fw   = ( ( uint16_t ) rbuffer[2] << 8 ) + ( uint16_t ) rbuffer[3];
    }

    return status;
}
