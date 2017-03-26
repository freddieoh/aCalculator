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
  
  func performOperation(_ symbol: String) {

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
