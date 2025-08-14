################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lr11xx_driver/src/lr11xx_bootloader.c \
../lr11xx_driver/src/lr11xx_crypto_engine.c \
../lr11xx_driver/src/lr11xx_driver_version.c \
../lr11xx_driver/src/lr11xx_gnss.c \
../lr11xx_driver/src/lr11xx_lr_fhss.c \
../lr11xx_driver/src/lr11xx_radio.c \
../lr11xx_driver/src/lr11xx_radio_timings.c \
../lr11xx_driver/src/lr11xx_regmem.c \
../lr11xx_driver/src/lr11xx_rttof.c \
../lr11xx_driver/src/lr11xx_system.c \
../lr11xx_driver/src/lr11xx_wifi.c 

OBJS += \
./lr11xx_driver/src/lr11xx_bootloader.o \
./lr11xx_driver/src/lr11xx_crypto_engine.o \
./lr11xx_driver/src/lr11xx_driver_version.o \
./lr11xx_driver/src/lr11xx_gnss.o \
./lr11xx_driver/src/lr11xx_lr_fhss.o \
./lr11xx_driver/src/lr11xx_radio.o \
./lr11xx_driver/src/lr11xx_radio_timings.o \
./lr11xx_driver/src/lr11xx_regmem.o \
./lr11xx_driver/src/lr11xx_rttof.o \
./lr11xx_driver/src/lr11xx_system.o \
./lr11xx_driver/src/lr11xx_wifi.o 

C_DEPS += \
./lr11xx_driver/src/lr11xx_bootloader.d \
./lr11xx_driver/src/lr11xx_crypto_engine.d \
./lr11xx_driver/src/lr11xx_driver_version.d \
./lr11xx_driver/src/lr11xx_gnss.d \
./lr11xx_driver/src/lr11xx_lr_fhss.d \
./lr11xx_driver/src/lr11xx_radio.d \
./lr11xx_driver/src/lr11xx_radio_timings.d \
./lr11xx_driver/src/lr11xx_regmem.d \
./lr11xx_driver/src/lr11xx_rttof.d \
./lr11xx_driver/src/lr11xx_system.d \
./lr11xx_driver/src/lr11xx_wifi.d 


# Each subdirectory must supply rules for building sources it contributes
lr11xx_driver/src/%.o lr11xx_driver/src/%.su lr11xx_driver/src/%.cyclo: ../lr11xx_driver/src/%.c lr11xx_driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lr11xx_driver-2f-src

clean-lr11xx_driver-2f-src:
	-$(RM) ./lr11xx_driver/src/lr11xx_bootloader.cyclo ./lr11xx_driver/src/lr11xx_bootloader.d ./lr11xx_driver/src/lr11xx_bootloader.o ./lr11xx_driver/src/lr11xx_bootloader.su ./lr11xx_driver/src/lr11xx_crypto_engine.cyclo ./lr11xx_driver/src/lr11xx_crypto_engine.d ./lr11xx_driver/src/lr11xx_crypto_engine.o ./lr11xx_driver/src/lr11xx_crypto_engine.su ./lr11xx_driver/src/lr11xx_driver_version.cyclo ./lr11xx_driver/src/lr11xx_driver_version.d ./lr11xx_driver/src/lr11xx_driver_version.o ./lr11xx_driver/src/lr11xx_driver_version.su ./lr11xx_driver/src/lr11xx_gnss.cyclo ./lr11xx_driver/src/lr11xx_gnss.d ./lr11xx_driver/src/lr11xx_gnss.o ./lr11xx_driver/src/lr11xx_gnss.su ./lr11xx_driver/src/lr11xx_lr_fhss.cyclo ./lr11xx_driver/src/lr11xx_lr_fhss.d ./lr11xx_driver/src/lr11xx_lr_fhss.o ./lr11xx_driver/src/lr11xx_lr_fhss.su ./lr11xx_driver/src/lr11xx_radio.cyclo ./lr11xx_driver/src/lr11xx_radio.d ./lr11xx_driver/src/lr11xx_radio.o ./lr11xx_driver/src/lr11xx_radio.su ./lr11xx_driver/src/lr11xx_radio_timings.cyclo ./lr11xx_driver/src/lr11xx_radio_timings.d ./lr11xx_driver/src/lr11xx_radio_timings.o ./lr11xx_driver/src/lr11xx_radio_timings.su ./lr11xx_driver/src/lr11xx_regmem.cyclo ./lr11xx_driver/src/lr11xx_regmem.d ./lr11xx_driver/src/lr11xx_regmem.o ./lr11xx_driver/src/lr11xx_regmem.su ./lr11xx_driver/src/lr11xx_rttof.cyclo ./lr11xx_driver/src/lr11xx_rttof.d ./lr11xx_driver/src/lr11xx_rttof.o ./lr11xx_driver/src/lr11xx_rttof.su ./lr11xx_driver/src/lr11xx_system.cyclo ./lr11xx_driver/src/lr11xx_system.d ./lr11xx_driver/src/lr11xx_system.o ./lr11xx_driver/src/lr11xx_system.su ./lr11xx_driver/src/lr11xx_wifi.cyclo ./lr11xx_driver/src/lr11xx_wifi.d ./lr11xx_driver/src/lr11xx_wifi.o ./lr11xx_driver/src/lr11xx_wifi.su

.PHONY: clean-lr11xx_driver-2f-src

