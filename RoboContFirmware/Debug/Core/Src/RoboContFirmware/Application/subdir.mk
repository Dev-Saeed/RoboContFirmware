################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/RoboContFirmware/Application/scheduler.cpp \
../Core/Src/RoboContFirmware/Application/system_manager.cpp 

OBJS += \
./Core/Src/RoboContFirmware/Application/scheduler.o \
./Core/Src/RoboContFirmware/Application/system_manager.o 

CPP_DEPS += \
./Core/Src/RoboContFirmware/Application/scheduler.d \
./Core/Src/RoboContFirmware/Application/system_manager.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/RoboContFirmware/Application/%.o Core/Src/RoboContFirmware/Application/%.su Core/Src/RoboContFirmware/Application/%.cyclo: ../Core/Src/RoboContFirmware/Application/%.cpp Core/Src/RoboContFirmware/Application/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F373xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-RoboContFirmware-2f-Application

clean-Core-2f-Src-2f-RoboContFirmware-2f-Application:
	-$(RM) ./Core/Src/RoboContFirmware/Application/scheduler.cyclo ./Core/Src/RoboContFirmware/Application/scheduler.d ./Core/Src/RoboContFirmware/Application/scheduler.o ./Core/Src/RoboContFirmware/Application/scheduler.su ./Core/Src/RoboContFirmware/Application/system_manager.cyclo ./Core/Src/RoboContFirmware/Application/system_manager.d ./Core/Src/RoboContFirmware/Application/system_manager.o ./Core/Src/RoboContFirmware/Application/system_manager.su

.PHONY: clean-Core-2f-Src-2f-RoboContFirmware-2f-Application

