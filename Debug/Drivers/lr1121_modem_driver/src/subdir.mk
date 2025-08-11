################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/lr1121_modem_driver/src/lr1121_bootloader.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_helper.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_modem.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_radio.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_relay.c \
../Drivers/lr1121_modem_driver/src/lr1121_modem_system.c 

C_DEPS += \
./Drivers/lr1121_modem_driver/src/lr1121_bootloader.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.d \
./Drivers/lr1121_modem_driver/src/lr1121_modem_system.d 

OBJS += \
./Drivers/lr1121_modem_driver/src/lr1121_bootloader.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.o \
./Drivers/lr1121_modem_driver/src/lr1121_modem_system.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/lr1121_modem_driver/src/%.o Drivers/lr1121_modem_driver/src/%.su Drivers/lr1121_modem_driver/src/%.cyclo: ../Drivers/lr1121_modem_driver/src/%.c Drivers/lr1121_modem_driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/test77/Drivers/lr1121_modem_driver" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common/printers" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/lr11xx_driver/src" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo/ranging_hopping_frequency" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-lr1121_modem_driver-2f-src

clean-Drivers-2f-lr1121_modem_driver-2f-src:
	-$(RM) ./Drivers/lr1121_modem_driver/src/lr1121_bootloader.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_bootloader.d ./Drivers/lr1121_modem_driver/src/lr1121_bootloader.o ./Drivers/lr1121_modem_driver/src/lr1121_bootloader.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_bsp.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_driver_version.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_helper.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_lorawan.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_lr_fhss.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_modem.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_radio_timings.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_regmem.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_relay.su ./Drivers/lr1121_modem_driver/src/lr1121_modem_system.cyclo ./Drivers/lr1121_modem_driver/src/lr1121_modem_system.d ./Drivers/lr1121_modem_driver/src/lr1121_modem_system.o ./Drivers/lr1121_modem_driver/src/lr1121_modem_system.su

.PHONY: clean-Drivers-2f-lr1121_modem_driver-2f-src

