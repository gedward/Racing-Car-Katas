//
//  Sensor.swift
//  Racing Car Katas
//
//  Created by Gerard Gonzalez on 11/30/15.
//
//

import Foundation

private func randBetween0And1() -> Float {
    return Float(arc4random()) / Float(UINT32_MAX)
}

class Sensor {
    
    let offset: Float = 16.0
    
    class func samplePressure() -> Float {
        // placeholder implementation that simulate a real sensor in a real tire
        return 6 * randBetween0And1() * randBetween0And1()
    }
    
    func popNextPressurePSIValue() -> Float {
        return offset + Sensor.samplePressure()
    }
    
}