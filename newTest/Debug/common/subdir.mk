################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/apps_common.c \
../common/apps_version.c \
../common/lr11xx_hal.c \
../common/smtc_hal_mcu_spi_stm32l4.c \
../common/smtc_hal_mcu_uart_stm32l4.c \
../common/stm32l4xx_ll_exti.c \
../common/stm32l4xx_ll_gpio.c \
../common/stm32l4xx_ll_spi.c \
../common/stm32l4xx_ll_usart.c 

OBJS += \
./common/apps_common.o \
./common/apps_version.o \
./common/lr11xx_hal.o \
./common/smtc_hal_mcu_spi_stm32l4.o \
./common/smtc_hal_mcu_uart_stm32l4.o \
./common/stm32l4xx_ll_exti.o \
./common/stm32l4xx_ll_gpio.o \
./common/stm32l4xx_ll_spi.o \
./common/stm32l4xx_ll_usart.o 

C_DEPS += \
./common/apps_common.d \
./common/apps_version.d \
./common/lr11xx_hal.d \
./common/smtc_hal_mcu_spi_stm32l4.d \
./common/smtc_hal_mcu_uart_stm32l4.d \
./common/stm32l4xx_ll_exti.d \
./common/stm32l4xx_ll_gpio.d \
./common/stm32l4xx_ll_spi.d \
./common/stm32l4xx_ll_usart.d 


# Each subdirectory must supply rules for building sources it contributes
common/%.o common/%.su common/%.cyclo: ../common/%.c common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common

clean-common:
	-$(RM) ./common/apps_common.cyclo ./common/apps_common.d ./common/apps_common.o ./common/apps_common.su ./common/apps_version.cyclo ./common/apps_version.d ./common/apps_version.o ./common/apps_version.su ./common/lr11xx_hal.cyclo ./common/lr11xx_hal.d ./common/lr11xx_hal.o ./common/lr11xx_hal.su ./common/smtc_hal_mcu_spi_stm32l4.cyclo ./common/smtc_hal_mcu_spi_stm32l4.d ./common/smtc_hal_mcu_spi_stm32l4.o ./common/smtc_hal_mcu_spi_stm32l4.su ./common/smtc_hal_mcu_uart_stm32l4.cyclo ./common/smtc_hal_mcu_uart_stm32l4.d ./common/smtc_hal_mcu_uart_stm32l4.o ./common/smtc_hal_mcu_uart_stm32l4.su ./common/stm32l4xx_ll_exti.cyclo ./common/stm32l4xx_ll_exti.d ./common/stm32l4xx_ll_exti.o ./common/stm32l4xx_ll_exti.su ./common/stm32l4xx_ll_gpio.cyclo ./common/stm32l4xx_ll_gpio.d ./common/stm32l4xx_ll_gpio.o ./common/stm32l4xx_ll_gpio.su ./common/stm32l4xx_ll_spi.cyclo ./common/stm32l4xx_ll_spi.d ./common/stm32l4xx_ll_spi.o ./common/stm32l4xx_ll_spi.su ./common/stm32l4xx_ll_usart.cyclo ./common/stm32l4xx_ll_usart.d ./common/stm32l4xx_ll_usart.o ./common/stm32l4xx_ll_usart.su

.PHONY: clean-common

