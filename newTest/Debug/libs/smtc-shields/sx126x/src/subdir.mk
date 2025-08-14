################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.c \
../libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.c 

OBJS += \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.o \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.o 

C_DEPS += \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.d \
./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.d 


# Each subdirectory must supply rules for building sources it contributes
libs/smtc-shields/sx126x/src/%.o libs/smtc-shields/sx126x/src/%.su libs/smtc-shields/sx126x/src/%.cyclo: ../libs/smtc-shields/sx126x/src/%.c libs/smtc-shields/sx126x/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-smtc-2d-shields-2f-sx126x-2f-src

clean-libs-2f-smtc-2d-shields-2f-sx126x-2f-src:
	-$(RM) ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1bas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb1cas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1261mb2bas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1cbs.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1das.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb1pas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1262mb2cas.su ./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.cyclo ./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.d ./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.o ./libs/smtc-shields/sx126x/src/smtc_shield_sx1268mb1gas.su

.PHONY: clean-libs-2f-smtc-2d-shields-2f-sx126x-2f-src

