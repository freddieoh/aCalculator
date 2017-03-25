//
//  ViewController.swift
//  aCalculator
//
//  Created by Fredrick Ohen on 3/25/17.
//  Copyright © 2017 geeoku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  

  @IBAction func touchDigit(_ sender: UIButton) {
    
    guard let digit = sender.currentTitle else {
      print("No title for button")
      return
    }
    print("\(digit) was pressed")
  }
  
  
}

