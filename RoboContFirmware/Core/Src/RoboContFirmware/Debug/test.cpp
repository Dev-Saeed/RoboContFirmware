#include <RoboContFirmware/Debug/swo.h>
#include <RoboContFirmware/LowLevel/motor.hpp>
#include <RoboContFirmware/LowLevel/encoder.hpp>
#include <RoboContFirmware/LowLevel/imu_icm20948.hpp>
#include <RoboContFirmware/MidLevel/motor_controller.hpp>
#include <RoboContFirmware/Debug/test.hpp>
#include <cstdio>

extern I2C_HandleTypeDef hi2c1; // Assuming hi2c1 is configured in CubeMX
extern TIM_HandleTypeDef htim5; // Assuming htim5 is configured in CubeMX

// Test function
void test()
{
    ICM20948 imu(&hi2c1, 0xD0); // Default I2C address shifted left by 1 (0x68 << 1)
    Motor testMotor(&htim5, TIM_CHANNEL_1, &htim5, TIM_CHANNEL_2, 0.1f, 1.0f, 1000.0f);

    bool imu_ready = imu.initialize();

    if (!imu_ready) {
        // Blink LED slowly to indicate failure (alternating PWM)
        while (1) {
            testMotor.setTargetSpeed(0.5f);
            testMotor.updatePWM(0.0f, 0.01f);
            HAL_Delay(500);
            testMotor.setTargetSpeed(0.0f);
            testMotor.updatePWM(0.0f, 0.01f);
            HAL_Delay(500);
        }
    }

    while (1)
    {
        float ax, ay, az, gx, gy, gz;
        bool ok = imu.readAccelGyro(ax, ay, az, gx, gy, gz);

        if (ok) {
            // Light up LED (connected to motor channel) based on ax
            float intensity = ax;
            if (intensity < 0.0f) intensity = 0.0f;
            if (intensity > 1.0f) intensity = 1.0f;
            testMotor.setTargetSpeed(intensity); // Simulate LED brightness
            testMotor.updatePWM(0.0f, 0.01f);
        }

        HAL_Delay(100);
    }
}
