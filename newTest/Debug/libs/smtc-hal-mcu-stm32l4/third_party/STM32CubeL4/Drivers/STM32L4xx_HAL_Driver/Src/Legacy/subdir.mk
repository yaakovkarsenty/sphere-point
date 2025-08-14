################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.c 

OBJS += \
./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.o 

C_DEPS += \
./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.d 


# Each subdirectory must supply rules for building sources it contributes
libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/%.o libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/%.su libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/%.cyclo: ../libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/%.c libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32L476xx -c -I../Core/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc -I../Drivers/STM32L4xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32L4xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Admin/work/newTest/newTest/common" -I"C:/Users/Admin/work/newTest/newTest/common/printers" -I"C:/Users/Admin/work/newTest/newTest/lr11xx_driver/src" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Inc" -I"C:/Users/Admin/work/newTest/newTest/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/common/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc-shields/lr11xx/inc" -I"C:/Users/Admin/work/newTest/newTest/libs/smtc_dbpsk_driver/src" -I"C:/Users/Admin/work/newTest/newTest/Drivers/STM32L4xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-STM32L4xx_HAL_Driver-2f-Src-2f-Legacy

clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-STM32L4xx_HAL_Driver-2f-Src-2f-Legacy:
	-$(RM) ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.cyclo ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.d ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.o ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/STM32L4xx_HAL_Driver/Src/Legacy/stm32l4xx_hal_can.su

.PHONY: clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-STM32L4xx_HAL_Driver-2f-Src-2f-Legacy

