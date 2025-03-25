#ifndef MOTORCONTROLLER_HPP
#define MOTORCONTROLLER_HPP

#include <RoboContFirmware/LowLevel/encoder.hpp>
#include <RoboContFirmware/LowLevel/motor.hpp>

#define MAX_MOTORS 4

class MotorController {
public:
    MotorController(float timer_frequency);

    void addMotor(Motor* motor, Encoder* encoder);
    void updateAll(float dt);
    void handleCapture(TIM_HandleTypeDef* htim, uint32_t capture_value);

private:
    struct MotorUnit {
        Motor* motor;
        Encoder* encoder;
    };

    MotorUnit motorUnits[MAX_MOTORS];
    uint8_t motorCount;
    float timerFreq;
};

#endif // MOTORCONTROLLER_H

