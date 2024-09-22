//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberString: [String] = []
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        displayLabel.text = "0"
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numberTest = sender.titleLabel?.text {
            if numberTest != "." {
                updateField()
            }
            
            if numberTest == "." {
                if !numberString.contains(".") {
                    updateField()
                }
            }
            
            func updateField() {
                numberString.append(numberTest)
                displayLabel.text = numberString.joined()
            }
            
        }
        
        
    
    }

}

