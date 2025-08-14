################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/smtc_dbpsk_driver/src/smtc_dbpsk.c 

OBJS += \
./libs/smtc_dbpsk_driver/src/smtc_dbpsk.o 

C_DEPS += \
./libs/smtc_dbpsk_driver/src/smtc_dbpsk.d 


# Each subdirectory must supply rules for building sources it contributes
libs/smtc_dbpsk_driver/src/%.o libs/smtc_dbpsk_driver/src/%.su libs/smtc_dbpsk_driver/src/%.cyclo: ../libs/smtc_dbpsk_driver/src/%.c libs/smtc_dbpsk_driver/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-smtc_dbpsk_driver-2f-src

clean-libs-2f-smtc_dbpsk_driver-2f-src:
	-$(RM) ./libs/smtc_dbpsk_driver/src/smtc_dbpsk.cyclo ./libs/smtc_dbpsk_driver/src/smtc_dbpsk.d ./libs/smtc_dbpsk_driver/src/smtc_dbpsk.o ./libs/smtc_dbpsk_driver/src/smtc_dbpsk.su

.PHONY: clean-libs-2f-smtc_dbpsk_driver-2f-src

