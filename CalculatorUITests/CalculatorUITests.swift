//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by SachinChandran on 9/7/17.
//  Copyright © 2017 Sachin Chandran. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class CalculatorUITests: XCTestCase {
        
        override func setUp() {
                super.setUp()

                continueAfterFailure = false
               
        }

        override func tearDown() {
                // Put teardown code here. This method is called after the invocation of each test method in the class.
                super.tearDown()
        }
    
        func testMatchingResult() {
                
                Given("User is on Calculator Screen")
                When("User taps on 1")
                And("User taps on 3")
                And("User taps on +")
                And("User taps on 4")
                And("User taps on =")
                Then("User sees the final result as 17")
                
        }
        
        func testNonMatchingResult() {
                Given("User is on Calculator Screen")
                When("User taps on 2")
                And("User taps on 3")
                And("User taps on +")
                And("User taps on 4")
                And("User taps on =")
                Then("User should not see the final result as 18")
        }
        
        func testPerformMultipleAdditionOperations() {
                
                Examples(
                        ["firstNumber", "secondNumber", "result"],
                        ["3", "4", "7"],
                        ["5", "8", "13"],
                        ["9","9", "18"]
                )
                
                Outline {
                        Given("User is on Calculator Screen")
                        When("User taps on <firstNumber>")
                        And("User taps on +")
                        And("User taps on <secondNumber>")
                        And("User taps on =")
                        Then("User sees the final result as <result>")
                }
                
        }
    
}
