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
  
  
}

