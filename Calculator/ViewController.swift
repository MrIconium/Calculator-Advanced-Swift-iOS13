//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private var isFinishedTypingNumber: Bool = true
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        
        //What should happen when a non-number button is pressed
        isFinishedTypingNumber = true
    
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        //What should happen when a number is entered into the keypad
        
        if let numberTyped = sender.titleLabel?.text {
            if numberTyped != "." {
                updateField()
            }
            
            if numberTyped == "." {
                if !displayLabel.text!.contains(".") {
                    updateField()
                }
            }
            
            func updateField() {
                if isFinishedTypingNumber {
                    displayLabel.text = numberTyped
                    isFinishedTypingNumber = false
                } else {
                    displayLabel.text = displayLabel.text! + numberTyped
                }
            }
            
        }
        
        
    
    }

}

