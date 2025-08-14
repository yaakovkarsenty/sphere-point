
#include "stm32l4xx_ll_spi.h"
#include "stm32l4xx_ll_gpio.h"
#include "stm32l4xx_hal.h"
#include "lr11xx_hal.h"
#include "main.h"

/*!
 * @brief Radio data transfer - write
 *
 * @param [in] context          Radio implementation parameters
 * @param [in] command          Pointer to the buffer to be transmitted
 * @param [in] command_length   Buffer size to be transmitted
 * @param [in] data             Pointer to the buffer to be transmitted
 * @param [in] data_length      Buffer size to be transmitted
 *
 * @returns Operation status
 */
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

/*!
 * @brief Radio data transfer - read
 *
 * @remark This is a two-step radio read operation. It consists of writing the command, releasing then re-asserting the
 * NSS line, then reading a discarded dummy byte followed by data_length bytes of response data from the transceiver.
 * While reading the dummy bytes and the response data, the implementation of this function must ensure that only zero
 * bytes (NOP) are written to the SPI bus.
 *
 * @param [in] context          Radio implementation parameters
 * @param [in] command          Pointer to the buffer to be transmitted
 * @param [in] command_length   Buffer size to be transmitted
 * @param [out] data            Pointer to the buffer to be received
 * @param [in] data_length      Buffer size to be received
 *
 * @returns Operation status
 *
 * @remark Some hardware SPI implementations write arbitary values on the MOSI line while reading. If this is done on
 * the LR11XX, non-zero values may be interpreted as commands. This driver does not exploit this functionality, and
 * expects that zeros be sent on the MOSI line when this command is reading the command response data.
 */
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


/*!
 * @brief Reset the radio
 *
 * @param [in] context Radio implementation parameters
 *
 * @returns Operation status
 */
lr11xx_hal_status_t lr11xx_hal_reset( const void* context )
{

	//    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low
	    HAL_GPIO_WritePin(LR1121_RESET_PORT, LR1121_RESET_PIN, GPIO_PIN_RESET);
	    HAL_Delay(1); // Hold low for at least 1ms
	    HAL_GPIO_WritePin(LR1121_RESET_PORT, LR1121_RESET_PIN, GPIO_PIN_SET);
	    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);

	    return LR11XX_HAL_STATUS_OK;
}

/*!
 * @brief Wake the radio up.
 *
 * @param [in] context Radio implementation parameters
 *
 * @returns Operation status
 */
lr11xx_hal_status_t lr11xx_hal_wakeup( const void* context )
{
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);
    HAL_Delay(1); // Pulse NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    // Wait for BUSY to go low
    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);

    return LR11XX_HAL_STATUS_OK;
}

lr11xx_hal_status_t smtc_hal_mcu_spi_rw_buffer( const uint8_t* data_out, uint8_t* data_in, uint16_t data_length )
{
    uint16_t rem_bytes_to_send    = data_length;
    uint16_t rem_bytes_to_receive = data_length;

    while( ( rem_bytes_to_send > 0 ) || ( rem_bytes_to_receive > 0 ) )
    {
        if( ( LL_SPI_GetTxFIFOLevel( hspi1.Instance ) != LL_SPI_TX_FIFO_FULL ) && ( rem_bytes_to_send > 0 ) )
        {
            const uint8_t byte_to_transmit = ( data_out == NULL ) ? 0x00 : data_out[data_length - rem_bytes_to_send];

            LL_SPI_TransmitData8( hspi1.Instance, byte_to_transmit );

            rem_bytes_to_send--;
        }

        if( ( LL_SPI_GetRxFIFOLevel( hspi1.Instance ) != LL_SPI_RX_FIFO_EMPTY ) && ( rem_bytes_to_receive > 0 ) )
        {
            const uint8_t byte_received = LL_SPI_ReceiveData8( hspi1.Instance );

            if( data_in != NULL )
            {
                data_in[data_length - rem_bytes_to_receive] = byte_received;
            }

            rem_bytes_to_receive--;
        }
    }

    return LR11XX_HAL_STATUS_OK;
}


/*!
 * @brief  Direct read from the SPI bus
 *
 * @remark Unlike @ref lr11xx_hal_read, this is a simple direct SPI bus SS/read/nSS operation. While reading the
 * response data, the implementation of this function must ensure that only zero bytes (NOP) are written to the SPI bus.
 *
 * @remark Formerly, that function depended on a lr11xx_hal_write_read API function, which required bidirectional SPI
 * communication. Given that all other radio functionality can be implemented with unidirectional SPI, it has been
 * decided to make this HAL API change to simplify implementation requirements.
 *
 * @remark Only required by the @ref lr11xx_system_get_status and @ref lr11xx_bootloader_get_status commands
 *
 * @param [in]  context      Radio implementation parameters
 * @param [out] data         Pointer to the buffer to be received
 * @param [in]  data_length  Buffer size to be received
 *
 * @returns Operation status
 */

lr11xx_hal_status_t lr11xx_hal_direct_read( const void* radio, uint8_t* data, const uint16_t data_length )
{

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET); // NSS low

    smtc_hal_mcu_spi_rw_buffer( NULL, data, data_length );

#if defined( USE_LR11XX_CRC_OVER_SPI )
    uint8_t crc_rx;
    smtc_hal_mcu_spi_rw_buffer( lr11xx_context->spi.inst, NULL, &crc_rx, 1 );
#endif

    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET); // NSS high

#if defined( USE_LR11XX_CRC_OVER_SPI )
    // check crc value
    uint8_t crc_computed = lr11xx_hal_compute_crc( 0xFF, data, data_length );
    if( rx_crc != crc_computed )
    {
        return LR11XX_HAL_STATUS_ERROR;
    }
#endif

    return LR11XX_HAL_STATUS_OK;
}
