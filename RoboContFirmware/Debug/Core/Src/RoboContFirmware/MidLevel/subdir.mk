################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/RoboContFirmware/MidLevel/analog_manager.cpp \
../Core/Src/RoboContFirmware/MidLevel/gps_manager.cpp \
../Core/Src/RoboContFirmware/MidLevel/imu_manager.cpp \
../Core/Src/RoboContFirmware/MidLevel/motor_controller.cpp 

OBJS += \
./Core/Src/RoboContFirmware/MidLevel/analog_manager.o \
./Core/Src/RoboContFirmware/MidLevel/gps_manager.o \
./Core/Src/RoboContFirmware/MidLevel/imu_manager.o \
./Core/Src/RoboContFirmware/MidLevel/motor_controller.o 

CPP_DEPS += \
./Core/Src/RoboContFirmware/MidLevel/analog_manager.d \
./Core/Src/RoboContFirmware/MidLevel/gps_manager.d \
./Core/Src/RoboContFirmware/MidLevel/imu_manager.d \
./Core/Src/RoboContFirmware/MidLevel/motor_controller.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/RoboContFirmware/MidLevel/%.o Core/Src/RoboContFirmware/MidLevel/%.su Core/Src/RoboContFirmware/MidLevel/%.cyclo: ../Core/Src/RoboContFirmware/MidLevel/%.cpp Core/Src/RoboContFirmware/MidLevel/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F373xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-RoboContFirmware-2f-MidLevel

clean-Core-2f-Src-2f-RoboContFirmware-2f-MidLevel:
	-$(RM) ./Core/Src/RoboContFirmware/MidLevel/analog_manager.cyclo ./Core/Src/RoboContFirmware/MidLevel/analog_manager.d ./Core/Src/RoboContFirmware/MidLevel/analog_manager.o ./Core/Src/RoboContFirmware/MidLevel/analog_manager.su ./Core/Src/RoboContFirmware/MidLevel/gps_manager.cyclo ./Core/Src/RoboContFirmware/MidLevel/gps_manager.d ./Core/Src/RoboContFirmware/MidLevel/gps_manager.o ./Core/Src/RoboContFirmware/MidLevel/gps_manager.su ./Core/Src/RoboContFirmware/MidLevel/imu_manager.cyclo ./Core/Src/RoboContFirmware/MidLevel/imu_manager.d ./Core/Src/RoboContFirmware/MidLevel/imu_manager.o ./Core/Src/RoboContFirmware/MidLevel/imu_manager.su ./Core/Src/RoboContFirmware/MidLevel/motor_controller.cyclo ./Core/Src/RoboContFirmware/MidLevel/motor_controller.d ./Core/Src/RoboContFirmware/MidLevel/motor_controller.o ./Core/Src/RoboContFirmware/MidLevel/motor_controller.su

.PHONY: clean-Core-2f-Src-2f-RoboContFirmware-2f-MidLevel

