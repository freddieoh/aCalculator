//
//  CalculatorBrain.swift
//  aCalculator
//
//  Created by Fredrick Ohen on 3/26/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import Foundation

struct CalculatorBrain {
  
  private var accumulator: Double?
  
  mutating func performOperation(_ symbol: String) {
    switch symbol {
    case "π":
      accumulator = Double.pi
    case "√":
      guard let operand = accumulator else {
        print("Operand not found")
        return
      }
      accumulator = sqrt(operand)
    default:
      break
    }
    print("Guard is out")
  }
  
  mutating func setOperand(_ operand: Double) {
    accumulator = operand
    
  }
  
  var result: Double? {
    get {
      return accumulator
    }
  }
}
