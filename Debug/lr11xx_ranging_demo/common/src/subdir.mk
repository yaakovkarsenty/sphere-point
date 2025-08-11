################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lr11xx_ranging_demo/common/src/common_version.c \
../lr11xx_ranging_demo/common/src/display_font.c \
../lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.c \
../lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.c 

C_DEPS += \
./lr11xx_ranging_demo/common/src/common_version.d \
./lr11xx_ranging_demo/common/src/display_font.d \
./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.d \
./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.d 

OBJS += \
./lr11xx_ranging_demo/common/src/common_version.o \
./lr11xx_ranging_demo/common/src/display_font.o \
./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.o \
./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.o 


# Each subdirectory must supply rules for building sources it contributes
lr11xx_ranging_demo/common/src/%.o lr11xx_ranging_demo/common/src/%.su lr11xx_ranging_demo/common/src/%.cyclo: ../lr11xx_ranging_demo/common/src/%.c lr11xx_ranging_demo/common/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/test77/Drivers/lr1121_modem_driver" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/common/printers" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/lr11xx_driver/src" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/common/inc" -I"C:/Users/Admin/work/test77/lr11xx_ranging_demo/lr11xx/apps/ranging_demo/ranging_hopping_frequency" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-lr11xx_ranging_demo-2f-common-2f-src

clean-lr11xx_ranging_demo-2f-common-2f-src:
	-$(RM) ./lr11xx_ranging_demo/common/src/common_version.cyclo ./lr11xx_ranging_demo/common/src/common_version.d ./lr11xx_ranging_demo/common/src/common_version.o ./lr11xx_ranging_demo/common/src/common_version.su ./lr11xx_ranging_demo/common/src/display_font.cyclo ./lr11xx_ranging_demo/common/src/display_font.d ./lr11xx_ranging_demo/common/src/display_font.o ./lr11xx_ranging_demo/common/src/display_font.su ./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.cyclo ./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.d ./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.o ./lr11xx_ranging_demo/common/src/smtc_hal_dbg_trace.su ./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.cyclo ./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.d ./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.o ./lr11xx_ranging_demo/common/src/smtc_shield_pinout_mapping.su

.PHONY: clean-lr11xx_ranging_demo-2f-common-2f-src

