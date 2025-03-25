#include <RoboContFirmware/MidLevel/motor_controller.hpp>

MotorController::MotorController(float timer_frequency) {
    motorCount = 0;
    timerFreq = timer_frequency;
}

void MotorController::addMotor(Motor* motor, Encoder* encoder) {
    if (motorCount < MAX_MOTORS) {
        motorUnits[motorCount].motor = motor;
        motorUnits[motorCount].encoder = encoder;
        motorCount++;
    }
}

void MotorController::handleCapture(TIM_HandleTypeDef* htim, uint32_t capture_value) {
    for (uint8_t i = 0; i < motorCount; i++) {
        if (motorUnits[i].encoder->getTimerHandle() == htim) {  // Use getter instead of accessing private member
            motorUnits[i].encoder->updateFromCapture(capture_value, timerFreq);
        }
    }
}

void MotorController::updateAll(float dt) {
    for (uint8_t i = 0; i < motorCount; i++) {
        float currentSpeed = motorUnits[i].encoder->getSpeed();
        motorUnits[i].motor->updatePWM(currentSpeed, dt);
    }
}

