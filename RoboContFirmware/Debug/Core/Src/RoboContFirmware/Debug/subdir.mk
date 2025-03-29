################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/RoboContFirmware/Debug/test.cpp 

C_SRCS += \
../Core/Src/RoboContFirmware/Debug/swo.c 

C_DEPS += \
./Core/Src/RoboContFirmware/Debug/swo.d 

OBJS += \
./Core/Src/RoboContFirmware/Debug/swo.o \
./Core/Src/RoboContFirmware/Debug/test.o 

CPP_DEPS += \
./Core/Src/RoboContFirmware/Debug/test.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/RoboContFirmware/Debug/%.o Core/Src/RoboContFirmware/Debug/%.su Core/Src/RoboContFirmware/Debug/%.cyclo: ../Core/Src/RoboContFirmware/Debug/%.c Core/Src/RoboContFirmware/Debug/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F373xC -c -I../Core/Inc -I../Core/Inc/RoboContFirmware/LowLevel -I../Core/Inc/RoboContFirmware/MidLevel -I../Core/Inc/RoboContFirmware/HighLevel -I../Core/Inc/RoboContFirmware/Application -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -std=c++17 -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Core/Src/RoboContFirmware/Debug/%.o Core/Src/RoboContFirmware/Debug/%.su Core/Src/RoboContFirmware/Debug/%.cyclo: ../Core/Src/RoboContFirmware/Debug/%.cpp Core/Src/RoboContFirmware/Debug/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F373xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-RoboContFirmware-2f-Debug

clean-Core-2f-Src-2f-RoboContFirmware-2f-Debug:
	-$(RM) ./Core/Src/RoboContFirmware/Debug/swo.cyclo ./Core/Src/RoboContFirmware/Debug/swo.d ./Core/Src/RoboContFirmware/Debug/swo.o ./Core/Src/RoboContFirmware/Debug/swo.su ./Core/Src/RoboContFirmware/Debug/test.cyclo ./Core/Src/RoboContFirmware/Debug/test.d ./Core/Src/RoboContFirmware/Debug/test.o ./Core/Src/RoboContFirmware/Debug/test.su

.PHONY: clean-Core-2f-Src-2f-RoboContFirmware-2f-Debug

