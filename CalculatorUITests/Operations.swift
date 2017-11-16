//
//  LandingScreen.swift
//  Calculator
//
//  Created by SachinChandran on 9/7/17.
//  Copyright © 2017 Sachin Chandran. All rights reserved.
//

import Foundation

import XCTest
import XCTest_Gherkin

class Operations : StepDefiner {
        override func defineSteps() {
                step("User is on Calculator Screen") {
                        XCUIApplication().launch()
                }
                
                step("User taps on (.*)") { (matches:[String]) in
                        let currentTappedButton = matches.first!
                        
                        XCUIApplication().buttons[currentTappedButton].tap()
                        XCTAssertTrue(true)
                }
                
                step("User sees the final result as (.*)") { (matches:[String]) in
                        let matchedResult = matches.first!
                        let textField = XCUIApplication().textFields.element
                        XCTAssertTrue((textField.value as! String == matchedResult), "Answer Matched" )
                }
                
                step("User should not see the final result as (.*)") { (matches:[String]) in
                        let nonMatchedResult = matches.first!
                        let textField = XCUIApplication().textFields.element
                        XCTAssertTrue((textField.value as! String != nonMatchedResult), "Answer did not match" )
                }
        }
}
