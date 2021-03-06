// -*- mode: c; c-default-style: "k&r"; c-basic-offset: 4; indent-tabs-mode: nil; tab-width: 4 -*-

//
// Copyright (c) 2016 Benjamin J. Andre
// 
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v.  2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.
// 

// 
// isolate macro definitions so that code is easier to reuse.
//

#ifndef SONAR_USART_3LED_SLEEP_H_
#define SONAR_USART_3LED_SLEEP_H_

#include <avr/io.h>

//
// pins
//

// led pins defined in rgb-led.h

#define USART_RX_PIN PD0
#define SONAR_RANGING_PIN PB4

#endif     /* SONAR_USART_3LED_SLEEP_H_ */
