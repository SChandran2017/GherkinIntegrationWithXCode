//
//  CalculatorUINativeTest.swift
//  Calculator
//
//  Created by SachinChandran on 9/20/17.
//  Copyright © 2017 Sachin Chandran. All rights reserved.
//

import XCTest
import XCTest_Gherkin

class CalculatorUINativeTest: XCTestCase {
        
        override func setUp() {
        super.setUp()
                continueAfterFailure = false
        
        }
    
        override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
                super.tearDown()
        }
    
        // Run all the scenarios from Addition.feature file
        func testAdditionFeatureWithFeatureRunner() {
                NativeRunner.runFeature(featureFile: "Addition.feature", testCase: self)
        }
        
        // Run particular scenario from Addition.feature file
        func testAdditionScenarioWithScenarioRunner() {
                NativeRunner.runScenario(featureFile: "Addition.feature", scenario: "Perform same operation for mutliple set of numbers", testCase: self)
        }
        
        
}
