//
//  Alarm.swift
//  Racing Car Katas
//
//  Created by Gerard Gonzalez on 11/30/15.
//
//

import Foundation

class Alarm {
    
    private let lowPressureThreshold: Float = 17
    private let highPressureThreshold: Float = 21
    private let sensor = Sensor()
    private(set) var alarmOn = false
    
    func check() {
        let psiPressireValue = sensor.popNextPressurePSIValue()
        
        if (psiPressireValue < lowPressureThreshold || psiPressireValue > highPressureThreshold) {
            alarmOn = true
        }
    }
    
}