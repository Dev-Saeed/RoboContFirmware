#include <RoboContFirmware/LowLevel/motor.hpp>

Motor::Motor(TIM_HandleTypeDef* pwm_timer1, uint32_t pwm_channel1,
             TIM_HandleTypeDef* pwm_timer2, uint32_t pwm_channel2,
             float wheel_diameter, float max_speed_mps, float max_pwm) {
    this->htim_pwm1 = pwm_timer1;
    this->channel_pwm1 = pwm_channel1;
    this->htim_pwm2 = pwm_timer2;
    this->channel_pwm2 = pwm_channel2;

    this->wheel_diameter = wheel_diameter;
    this->max_speed_mps = max_speed_mps;
    this->max_pwm = max_pwm;

    pid_kp = 1.0f;
    pid_ki = 0.0f;
    pid_kd = 0.0f;
    pid_integral = 0.0f;
    pid_previous_error = 0.0f;

    target_speed_mps = 0.0f;

    HAL_TIM_PWM_Start(htim_pwm1, channel_pwm1);
    HAL_TIM_PWM_Start(htim_pwm2, channel_pwm2);
}

void Motor::setPID(float kp, float ki, float kd) {
    pid_kp = kp;
    pid_ki = ki;
    pid_kd = kd;
}

void Motor::setTargetSpeed(float target_speed) {
    if (target_speed > max_speed_mps) target_speed = max_speed_mps;
    if (target_speed < -max_speed_mps) target_speed = -max_speed_mps;
    target_speed_mps = target_speed;
}

void Motor::updatePWM(float current_speed, float dt) {
    float error = target_speed_mps - current_speed;
    pid_integral += error * dt;
    float derivative = (error - pid_previous_error) / dt;
    float output = pid_kp * error + pid_ki * pid_integral + pid_kd * derivative;
    pid_previous_error = error;

    float pwm_value = (output / max_speed_mps) * max_pwm;
    if (pwm_value > max_pwm) pwm_value = max_pwm;
    if (pwm_value < -max_pwm) pwm_value = -max_pwm;

    if (pwm_value >= 0) {
        __HAL_TIM_SET_COMPARE(htim_pwm1, channel_pwm1, (uint32_t)pwm_value);
        __HAL_TIM_SET_COMPARE(htim_pwm2, channel_pwm2, 0);
    } else {
        __HAL_TIM_SET_COMPARE(htim_pwm1, channel_pwm1, 0);
        __HAL_TIM_SET_COMPARE(htim_pwm2, channel_pwm2, (uint32_t)(-pwm_value));
    }
}

float Motor::getMaxSpeedMps() const {
    return max_speed_mps;
}
