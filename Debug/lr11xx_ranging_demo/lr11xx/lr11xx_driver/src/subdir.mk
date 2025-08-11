################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.c \
../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.c 

C_DEPS += \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.d \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.d 

OBJS += \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.o \
./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.o 


# Each subdirectory must supply rules for building sources it contributes
lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/%.o lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/%.su lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/%.cyclo: ../lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/%.c lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/test77/Drivers/lr1121_modem_driver" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common/printers" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/lr11xx_driver/src" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo/ranging_hopping_frequency" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lr11xx_ranging_demo-2f-lr11xx-2f-lr11xx_driver-2f-src

clean-lr11xx_ranging_demo-2f-lr11xx-2f-lr11xx_driver-2f-src:
	-$(RM) ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_bootloader.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_crypto_engine.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_driver_version.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_gnss.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_lr_fhss.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_radio_timings.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_regmem.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_rttof.su ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.cyclo ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.d ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.o ./lr11xx_ranging_demo/lr11xx/lr11xx_driver/src/lr11xx_wifi.su

.PHONY: clean-lr11xx_ranging_demo-2f-lr11xx-2f-lr11xx_driver-2f-src

