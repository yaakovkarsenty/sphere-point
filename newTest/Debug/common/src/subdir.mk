################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/src/common_version.c \
../common/src/smtc_hal_arduino_mapping.c \
../common/src/smtc_hal_dbg_trace.c \
../common/src/smtc_hal_mcu_gpio_stm32l4.c \
../common/src/smtc_shield_pinout_mapping.c \
../common/src/uart_init.c 

OBJS += \
./common/src/common_version.o \
./common/src/smtc_hal_arduino_mapping.o \
./common/src/smtc_hal_dbg_trace.o \
./common/src/smtc_hal_mcu_gpio_stm32l4.o \
./common/src/smtc_shield_pinout_mapping.o \
./common/src/uart_init.o 

C_DEPS += \
./common/src/common_version.d \
./common/src/smtc_hal_arduino_mapping.d \
./common/src/smtc_hal_dbg_trace.d \
./common/src/smtc_hal_mcu_gpio_stm32l4.d \
./common/src/smtc_shield_pinout_mapping.d \
./common/src/uart_init.d 


# Each subdirectory must supply rules for building sources it contributes
common/src/%.o common/src/%.su common/src/%.cyclo: ../common/src/%.c common/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-src

clean-common-2f-src:
	-$(RM) ./common/src/common_version.cyclo ./common/src/common_version.d ./common/src/common_version.o ./common/src/common_version.su ./common/src/smtc_hal_arduino_mapping.cyclo ./common/src/smtc_hal_arduino_mapping.d ./common/src/smtc_hal_arduino_mapping.o ./common/src/smtc_hal_arduino_mapping.su ./common/src/smtc_hal_dbg_trace.cyclo ./common/src/smtc_hal_dbg_trace.d ./common/src/smtc_hal_dbg_trace.o ./common/src/smtc_hal_dbg_trace.su ./common/src/smtc_hal_mcu_gpio_stm32l4.cyclo ./common/src/smtc_hal_mcu_gpio_stm32l4.d ./common/src/smtc_hal_mcu_gpio_stm32l4.o ./common/src/smtc_hal_mcu_gpio_stm32l4.su ./common/src/smtc_shield_pinout_mapping.cyclo ./common/src/smtc_shield_pinout_mapping.d ./common/src/smtc_shield_pinout_mapping.o ./common/src/smtc_shield_pinout_mapping.su ./common/src/uart_init.cyclo ./common/src/uart_init.d ./common/src/uart_init.o ./common/src/uart_init.su

.PHONY: clean-common-2f-src

