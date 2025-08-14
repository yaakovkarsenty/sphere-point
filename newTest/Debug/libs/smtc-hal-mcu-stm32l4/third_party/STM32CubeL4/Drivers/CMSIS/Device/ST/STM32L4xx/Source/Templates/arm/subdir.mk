################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (13.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/startup_stm32l476xx.s 

OBJS += \
./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/startup_stm32l476xx.o 

S_DEPS += \
./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/startup_stm32l476xx.d 


# Each subdirectory must supply rules for building sources it contributes
libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/%.o: ../libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/%.s libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/subdir.mk
	arm-none-eabi-gcc -mcpu=cortex-m4 -g3 -DDEBUG -c -x assembler-with-cpp -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@" "$<"

clean: clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates-2f-arm

clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates-2f-arm:
	-$(RM) ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/startup_stm32l476xx.d ./libs/smtc-hal-mcu-stm32l4/third_party/STM32CubeL4/Drivers/CMSIS/Device/ST/STM32L4xx/Source/Templates/arm/startup_stm32l476xx.o

.PHONY: clean-libs-2f-smtc-2d-hal-2d-mcu-2d-stm32l4-2f-third_party-2f-STM32CubeL4-2f-Drivers-2f-CMSIS-2f-Device-2f-ST-2f-STM32L4xx-2f-Source-2f-Templates-2f-arm

