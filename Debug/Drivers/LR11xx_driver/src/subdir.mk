################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/LR11xx_driver/src/lr11xx_bootloader.c \
../Drivers/LR11xx_driver/src/lr11xx_crypto_engine.c \
../Drivers/LR11xx_driver/src/lr11xx_driver_version.c \
../Drivers/LR11xx_driver/src/lr11xx_gnss.c \
../Drivers/LR11xx_driver/src/lr11xx_lr_fhss.c \
../Drivers/LR11xx_driver/src/lr11xx_radio.c \
../Drivers/LR11xx_driver/src/lr11xx_radio_timings.c \
../Drivers/LR11xx_driver/src/lr11xx_regmem.c \
../Drivers/LR11xx_driver/src/lr11xx_rttof.c \
../Drivers/LR11xx_driver/src/lr11xx_system.c \
../Drivers/LR11xx_driver/src/lr11xx_wifi.c \
../Drivers/LR11xx_driver/src/sp_lr11xx_hal.c 

OBJS += \
./Drivers/LR11xx_driver/src/lr11xx_bootloader.o \
./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.o \
./Drivers/LR11xx_driver/src/lr11xx_driver_version.o \
./Drivers/LR11xx_driver/src/lr11xx_gnss.o \
./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.o \
./Drivers/LR11xx_driver/src/lr11xx_radio.o \
./Drivers/LR11xx_driver/src/lr11xx_radio_timings.o \
./Drivers/LR11xx_driver/src/lr11xx_regmem.o \
./Drivers/LR11xx_driver/src/lr11xx_rttof.o \
./Drivers/LR11xx_driver/src/lr11xx_system.o \
./Drivers/LR11xx_driver/src/lr11xx_wifi.o \
./Drivers/LR11xx_driver/src/sp_lr11xx_hal.o 

C_DEPS += \
./Drivers/LR11xx_driver/src/lr11xx_bootloader.d \
./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.d \
./Drivers/LR11xx_driver/src/lr11xx_driver_version.d \
./Drivers/LR11xx_driver/src/lr11xx_gnss.d \
./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.d \
./Drivers/LR11xx_driver/src/lr11xx_radio.d \
./Drivers/LR11xx_driver/src/lr11xx_radio_timings.d \
./Drivers/LR11xx_driver/src/lr11xx_regmem.d \
./Drivers/LR11xx_driver/src/lr11xx_rttof.d \
./Drivers/LR11xx_driver/src/lr11xx_system.d \
./Drivers/LR11xx_driver/src/lr11xx_wifi.d \
./Drivers/LR11xx_driver/src/sp_lr11xx_hal.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/LR11xx_driver/src/%.o Drivers/LR11xx_driver/src/%.su Drivers/LR11xx_driver/src/%.cyclo: ../Drivers/LR11xx_driver/src/%.c Drivers/LR11xx_driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Drivers-2f-LR11xx_driver-2f-src

clean-Drivers-2f-LR11xx_driver-2f-src:
	-$(RM) ./Drivers/LR11xx_driver/src/lr11xx_bootloader.cyclo ./Drivers/LR11xx_driver/src/lr11xx_bootloader.d ./Drivers/LR11xx_driver/src/lr11xx_bootloader.o ./Drivers/LR11xx_driver/src/lr11xx_bootloader.su ./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.cyclo ./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.d ./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.o ./Drivers/LR11xx_driver/src/lr11xx_crypto_engine.su ./Drivers/LR11xx_driver/src/lr11xx_driver_version.cyclo ./Drivers/LR11xx_driver/src/lr11xx_driver_version.d ./Drivers/LR11xx_driver/src/lr11xx_driver_version.o ./Drivers/LR11xx_driver/src/lr11xx_driver_version.su ./Drivers/LR11xx_driver/src/lr11xx_gnss.cyclo ./Drivers/LR11xx_driver/src/lr11xx_gnss.d ./Drivers/LR11xx_driver/src/lr11xx_gnss.o ./Drivers/LR11xx_driver/src/lr11xx_gnss.su ./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.cyclo ./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.d ./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.o ./Drivers/LR11xx_driver/src/lr11xx_lr_fhss.su ./Drivers/LR11xx_driver/src/lr11xx_radio.cyclo ./Drivers/LR11xx_driver/src/lr11xx_radio.d ./Drivers/LR11xx_driver/src/lr11xx_radio.o ./Drivers/LR11xx_driver/src/lr11xx_radio.su ./Drivers/LR11xx_driver/src/lr11xx_radio_timings.cyclo ./Drivers/LR11xx_driver/src/lr11xx_radio_timings.d ./Drivers/LR11xx_driver/src/lr11xx_radio_timings.o ./Drivers/LR11xx_driver/src/lr11xx_radio_timings.su ./Drivers/LR11xx_driver/src/lr11xx_regmem.cyclo ./Drivers/LR11xx_driver/src/lr11xx_regmem.d ./Drivers/LR11xx_driver/src/lr11xx_regmem.o ./Drivers/LR11xx_driver/src/lr11xx_regmem.su ./Drivers/LR11xx_driver/src/lr11xx_rttof.cyclo ./Drivers/LR11xx_driver/src/lr11xx_rttof.d ./Drivers/LR11xx_driver/src/lr11xx_rttof.o ./Drivers/LR11xx_driver/src/lr11xx_rttof.su ./Drivers/LR11xx_driver/src/lr11xx_system.cyclo ./Drivers/LR11xx_driver/src/lr11xx_system.d ./Drivers/LR11xx_driver/src/lr11xx_system.o ./Drivers/LR11xx_driver/src/lr11xx_system.su ./Drivers/LR11xx_driver/src/lr11xx_wifi.cyclo ./Drivers/LR11xx_driver/src/lr11xx_wifi.d ./Drivers/LR11xx_driver/src/lr11xx_wifi.o ./Drivers/LR11xx_driver/src/lr11xx_wifi.su ./Drivers/LR11xx_driver/src/sp_lr11xx_hal.cyclo ./Drivers/LR11xx_driver/src/sp_lr11xx_hal.d ./Drivers/LR11xx_driver/src/sp_lr11xx_hal.o ./Drivers/LR11xx_driver/src/sp_lr11xx_hal.su

.PHONY: clean-Drivers-2f-LR11xx_driver-2f-src

