#ifndef ENCODER_HPP
#define ENCODER_HPP

#include "stm32f3xx_hal.h"

class Encoder {
public:
    Encoder(TIM_HandleTypeDef* timer_ic, uint32_t ic_channel, GPIO_TypeDef* port_b, uint16_t pin_b,
            float wheel_diameter, uint32_t pulses_per_revolution);

    void updateFromCapture(uint32_t capture_value, float timer_frequency);
    float getSpeed() const;
    float getDistance() const;
    TIM_HandleTypeDef* getTimerHandle() const; // Getter for private htim
    uint32_t getChannel() const;


private:
    TIM_HandleTypeDef* htim;
    uint32_t ic_channel;
    GPIO_TypeDef* gpio_port_b;
    uint16_t gpio_pin_b;
    float wheel_diameter;
    uint32_t pulses_per_rev;

    uint32_t last_capture;
    float speed_mps;
    float distance_m;
};

#endif // ENCODER_HPP
