#include "main.h"
#include "i2c.h"
#include "imu_icm20948.hpp"
#include "test.hpp"
#include <cstdio>

// Test function
void test()
{
	HAL_GPIO_WritePin(GND_GPIO_Port, GND_Pin, GPIO_PIN_RESET);
	HAL_GPIO_WritePin(VCC_GPIO_Port, VCC_Pin, GPIO_PIN_SET);
	HAL_Delay(1000);
    ICM20948 imu(&hi2c1, 0xD0); // Default I2C address shifted left by 1 (0x68 << 1)

    bool imu_ready = imu.initialize();

    if (!imu_ready) {
        // Blink LED slowly to indicate failure (alternating PWM)
        while (1) {
        	HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
            HAL_Delay(500);
            HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
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
//            HAL_GPIO_TogglePin(LED_GPIO_Port, LED_Pin);
            HAL_GPIO_WritePin(LED_GPIO_Port, LED_Pin, GPIO_PIN_SET);
        }

        HAL_Delay(100);
    }
}
