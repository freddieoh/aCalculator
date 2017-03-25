//
//  ViewController.swift
//  aCalculator
//
//  Created by Fredrick Ohen on 3/25/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var displayLabel: UILabel!
  
  var userIsTyping = false
  
  override func viewDidLoad() {
    super.viewDidLoad()

  }

  @IBAction func touchDigit(_ sender: UIButton) {
    guard let digit = sender.currentTitle else {
      print("No title for button")
      return
    }
    guard let textInCurrentDisplay = displayLabel.text else {
        print("No current text in display")
        return
    }
    if userIsTyping {
      displayLabel.text = textInCurrentDisplay + digit
    } else {
      displayLabel.text = digit
      userIsTyping = true
      print("User is typing")
    }
  }
  

  @IBAction func performPiOperation(_ sender: UIButton) {
    userIsTyping = false
    guard let mathematicalSymbol = sender.currentTitle else {
      print("No π found")
      return
    }
    switch mathematicalSymbol {
    case "π":
      displayLabel.text = String(Double.pi)
    default:
      break
    }
  }
  
}

