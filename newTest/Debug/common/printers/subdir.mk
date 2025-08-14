################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../common/printers/lr11xx_bootloader_types_str.c \
../common/printers/lr11xx_crypto_engine_types_str.c \
../common/printers/lr11xx_gnss_types_str.c \
../common/printers/lr11xx_lr_fhss_types_str.c \
../common/printers/lr11xx_radio_types_str.c \
../common/printers/lr11xx_rttof_types_str.c \
../common/printers/lr11xx_system_types_str.c \
../common/printers/lr11xx_types_str.c \
../common/printers/lr11xx_wifi_types_str.c 

OBJS += \
./common/printers/lr11xx_bootloader_types_str.o \
./common/printers/lr11xx_crypto_engine_types_str.o \
./common/printers/lr11xx_gnss_types_str.o \
./common/printers/lr11xx_lr_fhss_types_str.o \
./common/printers/lr11xx_radio_types_str.o \
./common/printers/lr11xx_rttof_types_str.o \
./common/printers/lr11xx_system_types_str.o \
./common/printers/lr11xx_types_str.o \
./common/printers/lr11xx_wifi_types_str.o 

C_DEPS += \
./common/printers/lr11xx_bootloader_types_str.d \
./common/printers/lr11xx_crypto_engine_types_str.d \
./common/printers/lr11xx_gnss_types_str.d \
./common/printers/lr11xx_lr_fhss_types_str.d \
./common/printers/lr11xx_radio_types_str.d \
./common/printers/lr11xx_rttof_types_str.d \
./common/printers/lr11xx_system_types_str.d \
./common/printers/lr11xx_types_str.d \
./common/printers/lr11xx_wifi_types_str.d 


# Each subdirectory must supply rules for building sources it contributes
common/printers/%.o common/printers/%.su common/printers/%.cyclo: ../common/printers/%.c common/printers/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-common-2f-printers

clean-common-2f-printers:
	-$(RM) ./common/printers/lr11xx_bootloader_types_str.cyclo ./common/printers/lr11xx_bootloader_types_str.d ./common/printers/lr11xx_bootloader_types_str.o ./common/printers/lr11xx_bootloader_types_str.su ./common/printers/lr11xx_crypto_engine_types_str.cyclo ./common/printers/lr11xx_crypto_engine_types_str.d ./common/printers/lr11xx_crypto_engine_types_str.o ./common/printers/lr11xx_crypto_engine_types_str.su ./common/printers/lr11xx_gnss_types_str.cyclo ./common/printers/lr11xx_gnss_types_str.d ./common/printers/lr11xx_gnss_types_str.o ./common/printers/lr11xx_gnss_types_str.su ./common/printers/lr11xx_lr_fhss_types_str.cyclo ./common/printers/lr11xx_lr_fhss_types_str.d ./common/printers/lr11xx_lr_fhss_types_str.o ./common/printers/lr11xx_lr_fhss_types_str.su ./common/printers/lr11xx_radio_types_str.cyclo ./common/printers/lr11xx_radio_types_str.d ./common/printers/lr11xx_radio_types_str.o ./common/printers/lr11xx_radio_types_str.su ./common/printers/lr11xx_rttof_types_str.cyclo ./common/printers/lr11xx_rttof_types_str.d ./common/printers/lr11xx_rttof_types_str.o ./common/printers/lr11xx_rttof_types_str.su ./common/printers/lr11xx_system_types_str.cyclo ./common/printers/lr11xx_system_types_str.d ./common/printers/lr11xx_system_types_str.o ./common/printers/lr11xx_system_types_str.su ./common/printers/lr11xx_types_str.cyclo ./common/printers/lr11xx_types_str.d ./common/printers/lr11xx_types_str.o ./common/printers/lr11xx_types_str.su ./common/printers/lr11xx_wifi_types_str.cyclo ./common/printers/lr11xx_wifi_types_str.d ./common/printers/lr11xx_wifi_types_str.o ./common/printers/lr11xx_wifi_types_str.su

.PHONY: clean-common-2f-printers

