/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2025 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
SPI_HandleTypeDef hspi1;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_SPI1_Init(void);
static void MX_USART2_UART_Init(void);
/* USER CODE BEGIN PFP */

#ifdef __GNUC__
  // For GCC toolchains
  #define PUTCHAR_PROTOTYPE int __io_putchar(int ch)
#else
  #define PUTCHAR_PROTOTYPE int fputc(int ch, FILE *f)
#endif

PUTCHAR_PROTOTYPE {
  HAL_UART_Transmit(&huart2, (uint8_t *)&ch, 1, HAL_MAX_DELAY);  // Replace huart2 with your UART handle
  return ch;
}

#define LOGGER

void log_print(const char *format, ...) {
#ifdef LOGGER
	char buffer[508];
	char log_buf[512];
	va_list args;
	va_start(args, format);
	vsnprintf(buffer, 1024, format, args);
	va_end(args);

	sprintf(log_buf, "%ld %s\r\n", HAL_GetTick(), buffer);
	HAL_UART_Transmit(&huart2, (const uint8_t*) log_buf, strlen(log_buf) - 1, 1000);
#endif
}

void display_string_printf( uint16_t x, uint16_t y, uint16_t color, const char* format, ... )
{
#ifdef LOGGER
	char buffer[508];
	char log_buf[512];
	va_list args;
	va_start(args, format);
	vsnprintf(buffer, 1024, format, args);
	va_end(args);

	sprintf(log_buf, "%ld %s\r\n", HAL_GetTick(), buffer);
	HAL_UART_Transmit(&huart2, (const uint8_t*) log_buf, strlen(log_buf) - 1, 1000);
#endif
}

void vprint( const char* fmt, va_list argp )
{
    char string[255];
    if( 0 < vsprintf( string, fmt, argp ) )  // build string
    {
    	HAL_UART_Transmit(&huart2, ( uint8_t* ) string, strlen( string ), 1000 );
    }
}

void hal_mcu_trace_print( const char* fmt, ... )
{
    va_list argp;
    va_start( argp, fmt );
    vprint( fmt, argp );
    va_end( argp );
    printf("\n");
}


/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

#define LR1121_NSS_PORT NSS_GPIO_Port
#define LR1121_NSS_PIN  NSS_Pin
#define LR1121MB1DIS

typedef enum lr11xx_status_e
{
    LR11XX_STATUS_OK    = 0,
    LR11XX_STATUS_ERROR = 3,
} lr11xx_status_t;

#define LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH ( 2 )
#define LR11XX_SYSTEM_GET_VERSION_OC  0x0101

lr11xx_status_t lr11xx_system_get_version_sp( const void* context, lr11xx_system_version_t* version )
{
    const uint8_t cbuffer[LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH] = {
        ( uint8_t ) ( LR11XX_SYSTEM_GET_VERSION_OC >> 8 ),
        ( uint8_t ) ( LR11XX_SYSTEM_GET_VERSION_OC >> 0 ),
    };
    uint8_t rbuffer[LR11XX_SYSTEM_VERSION_LENGTH] = { 0x00 };

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);

    const lr11xx_status_t status = ( lr11xx_status_t ) lr11xx_hal_read(
        context, cbuffer, LR11XX_SYSTEM_GET_VERSION_CMD_LENGTH, rbuffer, LR11XX_SYSTEM_VERSION_LENGTH );

    if( status == LR11XX_STATUS_OK )
    {
        version->hw   = rbuffer[0];
        version->type = ( lr11xx_system_version_type_t ) rbuffer[1];
        version->fw   = ( ( uint16_t ) rbuffer[2] << 8 ) + ( uint16_t ) rbuffer[3];
    }
    printf("lr11xx_system_get_version_sp : hw : 0x%02x Chip Type = 0x%02X, FW=0x%02X \r\n", version->hw, version->type, version->fw);

    return status;
}

lr11xx_status_t lr11xx_system_get_version_working( const void* context, lr11xx_system_version_t* version )
{

	uint8_t tx[4] = {0xC0, 0x01, 0x01, 0x00}; // 0x0101 = GET_VERSION
	uint8_t rx[4] = {0};

    // Pull NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);

    // Send opcode
    HAL_SPI_TransmitReceive(&hspi1, tx, rx, 4, HAL_MAX_DELAY);

    // Pull NSS high
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    printf("SpHere - LR1121 Version printf1 : Chip Type = 0x%02X, FW=0x%02X%02X\r\n", rx[1], rx[2], rx[3]);
	version->hw   = rx[0];
	version->type = ( lr11xx_system_version_type_t ) rx[1];
	version->fw   = ( ( uint16_t ) rx[2] << 8 ) + ( uint16_t ) rx[3];
}

void lr1121_get_version_raw(void)
{
	lr11xx_system_version_t myVersion;

	uint8_t tx[4] = {0xC0, 0x01, 0x01, 0x00}; // 0x0101 = GET_VERSION
	uint8_t rx[4] = {0};

    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
    // Pull NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);

    // Send opcode
    HAL_SPI_TransmitReceive(&hspi1, tx, rx, 4, HAL_MAX_DELAY);

    // Pull NSS high
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    // Print result
    printf("SpHere - LR1121 Version printf2: Chip Type = 0x%02X, FW=0x%02X%02X\r\n", rx[1], rx[2], rx[3]);
    myVersion.hw   = rx[0];
    myVersion.type = ( lr11xx_system_version_type_t ) rx[1];
    myVersion.fw   = ( ( uint16_t ) rx[2] << 8 ) + ( uint16_t ) rx[3];
    printf("SpHere - LR1121 Version printf3: Chip Type = 0x%02X, FW=0x%02X\r\n", myVersion.type, myVersion.fw);

}


void lr1121_send_reset(void)
{
    uint8_t opcode = 0xC1;

    // Pull NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);

    // Send reset opcode
    HAL_SPI_Transmit(&hspi1, &opcode, 1, HAL_MAX_DELAY);

    // Pull NSS high
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    // Optional: wait for chip to reset
    while (HAL_GPIO_ReadPin(LR1121_BUSY_PORT, LR1121_BUSY_PIN) == GPIO_PIN_SET);
//    HAL_Delay(1000);
}

void getVersion()
{
	uint8_t tx[4] = {0xC0, 0x00, 0x00, 0x00}; // Send opcode + 3 dummy bytes
	uint8_t rx[4] = {0};

	HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);
	HAL_SPI_TransmitReceive(&hspi1, tx, rx, 4, HAL_MAX_DELAY);
	HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

	printf("LR1121 Version: HW=0x%02X, FW=0x%02X%02X\n", rx[1], rx[2], rx[3]);

}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{

  /* USER CODE BEGIN 1 */
	lr11xx_system_version_t my_version;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_SPI1_Init();
  MX_USART2_UART_Init();
  /* USER CODE BEGIN 2 */
  printf("Hello, world!\r\n");
  lr11xx_hal_reset();
  lr1121_send_reset();
  lr11xx_system_get_version_sp( 0, &my_version );
  lr1121_get_version_raw();
  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  main_ranging_demo();

  while (1)
  {
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  if (HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_MSI;
  RCC_OscInitStruct.MSIState = RCC_MSI_ON;
  RCC_OscInitStruct.MSICalibrationValue = 0;
  RCC_OscInitStruct.MSIClockRange = RCC_MSIRANGE_6;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_MSI;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_0) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief SPI1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_SPI1_Init(void)
{

  /* USER CODE BEGIN SPI1_Init 0 */

  /* USER CODE END SPI1_Init 0 */

  /* USER CODE BEGIN SPI1_Init 1 */

  /* USER CODE END SPI1_Init 1 */
  /* SPI1 parameter configuration*/
  hspi1.Instance = SPI1;
  hspi1.Init.Mode = SPI_MODE_MASTER;
  hspi1.Init.Direction = SPI_DIRECTION_2LINES;
  hspi1.Init.DataSize = SPI_DATASIZE_4BIT;
  hspi1.Init.CLKPolarity = SPI_POLARITY_LOW;
  hspi1.Init.CLKPhase = SPI_PHASE_1EDGE;
  hspi1.Init.NSS = SPI_NSS_SOFT;
  hspi1.Init.BaudRatePrescaler = SPI_BAUDRATEPRESCALER_2;
  hspi1.Init.FirstBit = SPI_FIRSTBIT_MSB;
  hspi1.Init.TIMode = SPI_TIMODE_DISABLE;
  hspi1.Init.CRCCalculation = SPI_CRCCALCULATION_DISABLE;
  hspi1.Init.CRCPolynomial = 7;
  hspi1.Init.CRCLength = SPI_CRC_LENGTH_DATASIZE;
  hspi1.Init.NSSPMode = SPI_NSS_PULSE_ENABLE;
  if (HAL_SPI_Init(&hspi1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN SPI1_Init 2 */

  /* USER CODE END SPI1_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 115200;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
  /* USER CODE BEGIN MX_GPIO_Init_1 */

  /* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOC, RX_LED_Pin|TX_LED_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, LR_NRESET_Pin|NSS_Pin, GPIO_PIN_SET);

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOB, GPIO_PIN_0, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Blue_Push_Button_Pin */
  GPIO_InitStruct.Pin = B1_Blue_Push_Button_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_Blue_Push_Button_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pins : RX_LED_Pin TX_LED_Pin */
  GPIO_InitStruct.Pin = RX_LED_Pin|TX_LED_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

  /*Configure GPIO pins : LR_NRESET_Pin NSS_Pin */
  GPIO_InitStruct.Pin = LR_NRESET_Pin|NSS_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

  /*Configure GPIO pin : PB0 */
  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /*Configure GPIO pins : PB1 BUSY_Pin */
  GPIO_InitStruct.Pin = GPIO_PIN_1|BUSY_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

  /* USER CODE BEGIN MX_GPIO_Init_2 */

  /* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}
#ifdef USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
