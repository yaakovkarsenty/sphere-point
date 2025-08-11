################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lr11xx_ranging_demo/lr11xx/common/apps_common.c \
../lr11xx_ranging_demo/lr11xx/common/apps_version.c 

C_DEPS += \
./lr11xx_ranging_demo/lr11xx/common/apps_common.d \
./lr11xx_ranging_demo/lr11xx/common/apps_version.d 

OBJS += \
./lr11xx_ranging_demo/lr11xx/common/apps_common.o \
./lr11xx_ranging_demo/lr11xx/common/apps_version.o 


# Each subdirectory must supply rules for building sources it contributes
lr11xx_ranging_demo/lr11xx/common/%.o lr11xx_ranging_demo/lr11xx/common/%.su lr11xx_ranging_demo/lr11xx/common/%.cyclo: ../lr11xx_ranging_demo/lr11xx/common/%.c lr11xx_ranging_demo/lr11xx/common/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/test77/Drivers/lr1121_modem_driver" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common/printers" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/lr11xx_driver/src" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo/ranging_hopping_frequency" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lr11xx_ranging_demo-2f-lr11xx-2f-common

clean-lr11xx_ranging_demo-2f-lr11xx-2f-common:
	-$(RM) ./lr11xx_ranging_demo/lr11xx/common/apps_common.cyclo ./lr11xx_ranging_demo/lr11xx/common/apps_common.d ./lr11xx_ranging_demo/lr11xx/common/apps_common.o ./lr11xx_ranging_demo/lr11xx/common/apps_common.su ./lr11xx_ranging_demo/lr11xx/common/apps_version.cyclo ./lr11xx_ranging_demo/lr11xx/common/apps_version.d ./lr11xx_ranging_demo/lr11xx/common/apps_version.o ./lr11xx_ranging_demo/lr11xx/common/apps_version.su

.PHONY: clean-lr11xx_ranging_demo-2f-lr11xx-2f-common

