#ifndef MOTOR_HPP
#define MOTOR_HPP

#include "stm32f3xx_hal.h"

class Motor {
public:
    Motor(TIM_HandleTypeDef* pwm_timer1, uint32_t pwm_channel1,
          TIM_HandleTypeDef* pwm_timer2, uint32_t pwm_channel2,
          float wheel_diameter, float max_speed_mps, float max_pwm);

    void setTargetSpeed(float target_speed);
    void updatePWM(float current_speed, float dt);
    void setPID(float kp, float ki, float kd);

    float getMaxSpeedMps() const; // Getter for max_speed_mps

private:
    TIM_HandleTypeDef* htim_pwm1;
    uint32_t channel_pwm1;
    TIM_HandleTypeDef* htim_pwm2;
    uint32_t channel_pwm2;

    float wheel_diameter;
    float max_speed_mps;
    float max_pwm;

    float pid_kp;
    float pid_ki;
    float pid_kd;
    float pid_integral;
    float pid_previous_error;

    float target_speed_mps;
};

#endif // MOTOR_HPP
