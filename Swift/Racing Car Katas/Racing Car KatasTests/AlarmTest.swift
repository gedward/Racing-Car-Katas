//
//  AlarmTest.swift
//  Racing Car Katas
//
//  Created by Gerard Gonzalez on 11/30/15.
//
//

import XCTest
@testable import Racing_Car_Katas

class AlarmTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let alarm = Alarm()
        XCTAssertEqual(alarm.alarmOn, false)
    }
    
}
