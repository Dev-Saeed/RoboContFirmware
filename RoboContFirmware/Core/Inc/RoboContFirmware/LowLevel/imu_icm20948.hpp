#ifndef IMU_ICM20948_HPP
#define IMU_ICM20948_HPP

#include "stm32f3xx_hal.h"
#include <cstdint>

/**
 * @brief Driver class for the ICM-20948 9-DOF IMU over I2C.
 * Supports 3-axis accelerometer, 3-axis gyroscope, and 3-axis magnetometer.
 */
class ICM20948 {
public:
    /**
     * @brief Construct a new ICM20948 driver instance
     *
     * @param i2cHandle Pointer to the HAL I2C handle
     * @param deviceAddress I2C address of the sensor (default 0x68 shifted left by 1 for HAL)
     */
    ICM20948(I2C_HandleTypeDef* i2cHandle, uint8_t deviceAddress = 0x68 << 1);

    /**
     * @brief Initialize the sensor and verify communication
     *
     * @return true if sensor responds correctly
     * @return false otherwise
     */
    bool initialize();

    /**
     * @brief Read accelerometer and gyroscope data (6-DOF)
     *
     * @param ax Acceleration in X (m/s^2)
     * @param ay Acceleration in Y (m/s^2)
     * @param az Acceleration in Z (m/s^2)
     * @param gx Angular velocity in X (deg/s)
     * @param gy Angular velocity in Y (deg/s)
     * @param gz Angular velocity in Z (deg/s)
     * @return true if successful
     */
    bool readAccelGyro(float& ax, float& ay, float& az, float& gx, float& gy, float& gz);

    /**
     * @brief Read magnetometer data (3-DOF)
     *
     * @param mx Magnetic field in X (uT)
     * @param my Magnetic field in Y (uT)
     * @param mz Magnetic field in Z (uT)
     * @return true if successful
     */
    bool readMag(float& mx, float& my, float& mz);

private:
    I2C_HandleTypeDef* hi2c;   ///< HAL I2C handle
    uint8_t address;          ///< I2C device address (8-bit format)

    /**
     * @brief Write a byte to a register
     *
     * @param reg Register address
     * @param data Byte to write
     * @return true if successful
     */
    bool writeRegister(uint8_t reg, uint8_t data);

    /**
     * @brief Read multiple bytes from consecutive registers
     *
     * @param reg Start register address
     * @param buffer Pointer to data buffer
     * @param length Number of bytes to read
     * @return true if successful
     */
    bool readRegisters(uint8_t reg, uint8_t* buffer, uint16_t length);

    /**
     * @brief Read a single byte from a register
     *
     * @param reg Register address
     * @return uint8_t Data read
     */
    uint8_t readRegister(uint8_t reg);
};

#endif // IMU_ICM20948_HPP
