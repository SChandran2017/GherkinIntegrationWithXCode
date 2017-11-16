//
//  ViewController.swift
//  Calculator
//
//  Created by SachinChandran on 9/7/17.
//  Copyright © 2017 Sachin Chandran. All rights reserved.
//

import UIKit

enum OperationType {
        case add
        case subtract
        case multiply
        case divide
        case equal
}

class ViewController: UIViewController {

        @IBOutlet weak var calculateSpace: UITextField!
        
        var operationButtonTapped = false
        var operationStack = [OperationType]()
        var numberStack = [String]()
        override func viewDidLoad() {
                super.viewDidLoad()
                // Do any additional setup after loading the view, typically from a nib.
        }

        override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                // Dispose of any resources that can be recreated.
        }
        

        @IBAction func onePressed(_ sender: Any) {
                addTextToCalculate("1")
        }
        
        
        @IBAction func twoPressed(_ sender: Any) {
                addTextToCalculate("2")
        }
        
        
        @IBAction func threePressed(_ sender: Any) {
                addTextToCalculate("3")
        }
        
        
        @IBAction func fourPressed(_ sender: Any) {
                addTextToCalculate("4")
        }
        
        
        @IBAction func fivePressed(_ sender: Any) {
                addTextToCalculate("5")
        }

        
        @IBAction func sixPressed(_ sender: Any) {
                addTextToCalculate("6")
        }
        
        
        @IBAction func sevenPressed(_ sender: Any) {
                addTextToCalculate("7")
        }
        
        
        @IBAction func eightPressed(_ sender: Any) {
                addTextToCalculate("8")
        }
        
        
        @IBAction func ninePressed(_ sender: Any) {
                addTextToCalculate("9")
        }
        
        
        @IBAction func zeroPressed(_ sender: Any) {
                addTextToCalculate("0")
        }
        
        

        @IBAction func addOperation(_ sender: Any) {
                operationButtonTapped = true
                operationStack.append(.add)
                numberStack.append(calculateSpace.text!)
        }
    
        @IBAction func subtractOperation(_ sender: Any) {
                operationButtonTapped = true
                operationStack.append(.subtract)
                numberStack.append(calculateSpace.text!)
        }
        
        
        @IBAction func multiplyOperation(_ sender: Any) {
                operationButtonTapped = true
                operationStack.append(.multiply)
                numberStack.append(calculateSpace.text!)
        }
        
        
        
        @IBAction func divideOperation(_ sender: Any) {
                operationButtonTapped = true
                operationStack.append(.divide)
                numberStack.append(calculateSpace.text!)
        }
        
        
        @IBAction func equalsOperation(_ sender: Any) {
                operationButtonTapped = true
                numberStack.append(calculateSpace.text!)
                if numberStack.count > 1 {
                        doCalculations(operationStack, numbers: numberStack)
                }
        }
        
        func clearCalculateArea() {
                calculateSpace.text = ""
        }
        
        func addTextToCalculate(_ value:String) {
                if operationButtonTapped {
                        clearCalculateArea()
                }
                
                if (calculateSpace.text?.characters.count)! > 0 {
                        calculateSpace.text?.append(value)
                } else {
                        calculateSpace.text = value
                }

                operationButtonTapped = false
                
                
        }
        
        func doCalculations(_ operations:[OperationType], numbers: [String]) {
                var finalResult = ""
                var tempResult = 0
                for value in 0..<numbers.count {
                        if value >= 1 {
                                switch operations[value - 1]  {
                                case .add:
                                       tempResult = tempResult + Int(numbers[value])!
                                case .subtract:
                                       tempResult = tempResult - Int(numbers[value])!
                                case .multiply:
                                        tempResult = tempResult * Int(numbers[value])!
                                case .divide:
                                        tempResult = tempResult / Int(numbers[value])!
                                default:
                                        calculateSpace.text = ""
                                }
                        } else {
                                tempResult = Int(numbers[value])!
                        }
                }
                finalResult = String(tempResult)
                calculateSpace.text = finalResult
        }
        
}

