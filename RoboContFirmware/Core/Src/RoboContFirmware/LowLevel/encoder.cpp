#include <RoboContFirmware/LowLevel/encoder.hpp>

Encoder::Encoder(TIM_HandleTypeDef* timer_ic, uint32_t ic_channel, GPIO_TypeDef* port_b, uint16_t pin_b,
                 float wheel_diameter, uint32_t pulses_per_revolution) {
    this->htim = timer_ic;
    this->ic_channel = ic_channel;
    this->gpio_port_b = port_b;
    this->gpio_pin_b = pin_b;
    this->wheel_diameter = wheel_diameter;
    this->pulses_per_rev = pulses_per_revolution;
    this->last_capture = 0;
    this->speed_mps = 0.0f;
    this->distance_m = 0.0f;

    HAL_TIM_IC_Start_IT(htim, ic_channel);
}

void Encoder::updateFromCapture(uint32_t capture_value, float timer_frequency) {
    uint32_t diff;
    if (capture_value >= last_capture) {
        diff = capture_value - last_capture;
    } else {
        diff = (htim->Instance->ARR - last_capture) + capture_value + 1;
    }

    if (diff > 0) {
        float period = (float)diff / timer_frequency;
        float rotations_per_sec = 1.0f / (period * pulses_per_rev);

        // Determine direction from GPIO B pin
        if (HAL_GPIO_ReadPin(gpio_port_b, gpio_pin_b) == GPIO_PIN_RESET) {
            rotations_per_sec = -rotations_per_sec;
        }

        float speed = rotations_per_sec * (3.1415926f * wheel_diameter);
        speed_mps = speed;
        distance_m += speed * period;
    } else {
        speed_mps = 0.0f;
    }

    last_capture = capture_value;
}

float Encoder::getSpeed() const {
    return speed_mps;
}

float Encoder::getDistance() const {
    return distance_m;
}

TIM_HandleTypeDef* Encoder::getTimerHandle() const {
    return htim;
}

uint32_t Encoder::getChannel() const {
    return ic_channel;
}
