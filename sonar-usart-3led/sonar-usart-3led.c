// -*- mode: c; c-default-style: "k&r"; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*-

//
// Copyright (c) 2015 Benjamin J. Andre
// 
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v.  2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
// 

// 
// Blink three LEDs in sequence on an 8-bit avr attiny 2313, driving
// LEDs with PWM.
//
// Actually a single RGB led that turns on each color sequentially.
//
// RGB LED is common anode, RABG, (common connected to 3.3V,
// invididual pins connected to ground). led on when individual ping
// goes low, allowing current through. off when high.  Individual pins
// of LED connected to pin PB1, PB2, PB3

    
// #define F_CPU 1000000UL // clock frequency (Hz) defined in makefile!

#include <inttypes.h>
#include <avr/io.h>
#include <util/delay.h>

#define BAUD 9600
#include <util/setbaud.h>

// define common macro definitions
#include "sonar-usart-3led.h"
// relies on led pin macros defined in the sonar-usart-3led.h
#include "rgb-led.h"

#define delay1 250.0
#define delay2 6500.0


void usart_init(void) {

    // MaxBotix LV-MaxSonar-EZ MB1010
    //   * Asynchronous serial with RS232 format
    //   * Baud rate = 9600
    //   * 8 bit characters
    //   * no parity
    //   * one stop bit

    // RX receiver enabled
    UCSRB |= (1 << RXEN);
    // RX complete interrupt enable
    UCSRB |= (1 << RXCIE);

    // asynchronous mode
    UCSRC |= (1 << UMSEL);
    // no parity
    UCSRC |= (0 << UPM0) | (0 << UPM1);
    // one stop bit
    UCSRC |= (0 << USBS);
    // USART 8 bit characters:
    UCSRC |= (1 << UCSZ0) | (1 << UCSZ1);
    UCSRB |= (0 << UCSZ2);
    // 9600 baud
    UBRRH = UBRRH_VALUE;
    UBRRL = UBRRL_VALUE;
    
} // end usart_init()

void led_pwm_init(void) {
    // set output pins for led and pwm signal
    // set pins for port b0=G, b1=B, b2=A, b3=R to output
    DDRB = 0;
    DDRB |= (1 << LED_RED_PIN);
    DDRB |= (1 << LED_ANODE_PIN);
    DDRB |= (1 << LED_BLUE_PIN);
    DDRB |= (1 << LED_GREEN_PIN);

    // setup timer/counter 0 for pwm
    TCCR0B = (1 << CS00);  // internal clock source, no scaling
    // NOTE(bja, 2015-10) clk/8 is max scaling without visible blinking.
    
   TCCR0B = (1 << CS01);  // internal clock source, clk/8 scaling
   TCCR0A = (1 << WGM00);  // PWM, phase correct, 8 bit
   TCCR0A |= (1 << COM0A1);  // Clear OC0A on Compare Match
   
   // initial PWM pulse width
   OCR0A  = 0xFF;

    PORTB = turn_led_off(PORTB);  // led off
} // end led_init()


int main(void) {
    usart_init();
    led_pwm_init();
    
    // cycle the led
    //PORTB = turn_led_off(PORTB);
    _delay_ms(delay1);
    PORTB = set_led_red(PORTB);
    _delay_ms(delay1);
    PORTB = set_led_blue(PORTB);
    _delay_ms(delay1);
    PORTB = set_led_green(PORTB);
    _delay_ms(delay1);
    PORTB = turn_led_off(PORTB);
    _delay_ms(delay1);
    PORTB = set_led_red(PORTB);
    PORTB = turn_led_on(PORTB);
    _delay_ms(delay1);
    OCR0A = 0x00;
    for(;;) {

        // change PWM pulse width every 2 seconds, note 8-bit pwm!
        /* PORTB = set_led_blue(PORTB); */
        /* OCR0A = 0x40; */
        /* _delay_ms(delay2); */
        /* PORTB = set_led_green(PORTB); */
        /* OCR0A = 0xA0; */
        /* _delay_ms(delay2); */
        //        PORTB = set_led_red(PORTB);
        OCR0A += 0x01;
        _delay_ms(delay1);
    }
  
    return 0;
}

  
