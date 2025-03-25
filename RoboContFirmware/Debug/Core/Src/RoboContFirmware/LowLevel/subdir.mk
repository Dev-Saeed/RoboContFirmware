################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Core/Src/RoboContFirmware/LowLevel/adc_handler.cpp \
../Core/Src/RoboContFirmware/LowLevel/can_handler.cpp \
../Core/Src/RoboContFirmware/LowLevel/dac_handler.cpp \
../Core/Src/RoboContFirmware/LowLevel/encoder.cpp \
../Core/Src/RoboContFirmware/LowLevel/gps_neo.cpp \
../Core/Src/RoboContFirmware/LowLevel/imu_icm20948.cpp \
../Core/Src/RoboContFirmware/LowLevel/modbus_handler.cpp \
../Core/Src/RoboContFirmware/LowLevel/motor.cpp \
../Core/Src/RoboContFirmware/LowLevel/servo.cpp \
../Core/Src/RoboContFirmware/LowLevel/uart_handler.cpp 

OBJS += \
./Core/Src/RoboContFirmware/LowLevel/adc_handler.o \
./Core/Src/RoboContFirmware/LowLevel/can_handler.o \
./Core/Src/RoboContFirmware/LowLevel/dac_handler.o \
./Core/Src/RoboContFirmware/LowLevel/encoder.o \
./Core/Src/RoboContFirmware/LowLevel/gps_neo.o \
./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.o \
./Core/Src/RoboContFirmware/LowLevel/modbus_handler.o \
./Core/Src/RoboContFirmware/LowLevel/motor.o \
./Core/Src/RoboContFirmware/LowLevel/servo.o \
./Core/Src/RoboContFirmware/LowLevel/uart_handler.o 

CPP_DEPS += \
./Core/Src/RoboContFirmware/LowLevel/adc_handler.d \
./Core/Src/RoboContFirmware/LowLevel/can_handler.d \
./Core/Src/RoboContFirmware/LowLevel/dac_handler.d \
./Core/Src/RoboContFirmware/LowLevel/encoder.d \
./Core/Src/RoboContFirmware/LowLevel/gps_neo.d \
./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.d \
./Core/Src/RoboContFirmware/LowLevel/modbus_handler.d \
./Core/Src/RoboContFirmware/LowLevel/motor.d \
./Core/Src/RoboContFirmware/LowLevel/servo.d \
./Core/Src/RoboContFirmware/LowLevel/uart_handler.d 


# Each subdirectory must supply rules for building sources it contributes
Core/Src/RoboContFirmware/LowLevel/%.o Core/Src/RoboContFirmware/LowLevel/%.su Core/Src/RoboContFirmware/LowLevel/%.cyclo: ../Core/Src/RoboContFirmware/LowLevel/%.cpp Core/Src/RoboContFirmware/LowLevel/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F373xC -c -I../Core/Inc -I../Drivers/STM32F3xx_HAL_Driver/Inc/Legacy -I../Drivers/STM32F3xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F3xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Core-2f-Src-2f-RoboContFirmware-2f-LowLevel

clean-Core-2f-Src-2f-RoboContFirmware-2f-LowLevel:
	-$(RM) ./Core/Src/RoboContFirmware/LowLevel/adc_handler.cyclo ./Core/Src/RoboContFirmware/LowLevel/adc_handler.d ./Core/Src/RoboContFirmware/LowLevel/adc_handler.o ./Core/Src/RoboContFirmware/LowLevel/adc_handler.su ./Core/Src/RoboContFirmware/LowLevel/can_handler.cyclo ./Core/Src/RoboContFirmware/LowLevel/can_handler.d ./Core/Src/RoboContFirmware/LowLevel/can_handler.o ./Core/Src/RoboContFirmware/LowLevel/can_handler.su ./Core/Src/RoboContFirmware/LowLevel/dac_handler.cyclo ./Core/Src/RoboContFirmware/LowLevel/dac_handler.d ./Core/Src/RoboContFirmware/LowLevel/dac_handler.o ./Core/Src/RoboContFirmware/LowLevel/dac_handler.su ./Core/Src/RoboContFirmware/LowLevel/encoder.cyclo ./Core/Src/RoboContFirmware/LowLevel/encoder.d ./Core/Src/RoboContFirmware/LowLevel/encoder.o ./Core/Src/RoboContFirmware/LowLevel/encoder.su ./Core/Src/RoboContFirmware/LowLevel/gps_neo.cyclo ./Core/Src/RoboContFirmware/LowLevel/gps_neo.d ./Core/Src/RoboContFirmware/LowLevel/gps_neo.o ./Core/Src/RoboContFirmware/LowLevel/gps_neo.su ./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.cyclo ./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.d ./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.o ./Core/Src/RoboContFirmware/LowLevel/imu_icm20948.su ./Core/Src/RoboContFirmware/LowLevel/modbus_handler.cyclo ./Core/Src/RoboContFirmware/LowLevel/modbus_handler.d ./Core/Src/RoboContFirmware/LowLevel/modbus_handler.o ./Core/Src/RoboContFirmware/LowLevel/modbus_handler.su ./Core/Src/RoboContFirmware/LowLevel/motor.cyclo ./Core/Src/RoboContFirmware/LowLevel/motor.d ./Core/Src/RoboContFirmware/LowLevel/motor.o ./Core/Src/RoboContFirmware/LowLevel/motor.su ./Core/Src/RoboContFirmware/LowLevel/servo.cyclo ./Core/Src/RoboContFirmware/LowLevel/servo.d ./Core/Src/RoboContFirmware/LowLevel/servo.o ./Core/Src/RoboContFirmware/LowLevel/servo.su ./Core/Src/RoboContFirmware/LowLevel/uart_handler.cyclo ./Core/Src/RoboContFirmware/LowLevel/uart_handler.d ./Core/Src/RoboContFirmware/LowLevel/uart_handler.o ./Core/Src/RoboContFirmware/LowLevel/uart_handler.su

.PHONY: clean-Core-2f-Src-2f-RoboContFirmware-2f-LowLevel

