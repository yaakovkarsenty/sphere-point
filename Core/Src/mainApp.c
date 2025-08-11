#ifdef nodef

#define LR1121_NSS_PORT NSS_GPIO_Port
#define LR1121_NSS_PIN  NSS_Pin

void lr1121_get_version_raw(void)
{
    uint8_t opcode = 0xC0;
    uint8_t response[3] = {0};

    // Pull NSS low
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_RESET);

    // Send opcode
    HAL_SPI_Transmit(&hspi1, &opcode, 1, HAL_MAX_DELAY);

    // Receive 3 bytes
    HAL_SPI_Receive(&hspi1, response, 3, HAL_MAX_DELAY);

    // Pull NSS high
    HAL_GPIO_WritePin(LR1121_NSS_PORT, LR1121_NSS_PIN, GPIO_PIN_SET);

    // Print result
    printf("LR1121 Version: HW=0x%02X, FW=0x%02X%02X\n", response[0], response[1], response[2]);
}


void resetVhip()
{
HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, GPIO_PIN_RESET); // Hold reset
HAL_Delay(5);
HAL_GPIO_WritePin(GPIOA, GPIO_PIN_10, GPIO_PIN_SET);   // Release
HAL_Delay(10); // Wait for LR1121 to boot
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
    HAL_Delay(10);
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
#endif
