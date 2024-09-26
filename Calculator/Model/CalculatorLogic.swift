//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Mehmet Emrah Konya on 26.09.2024.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    var number: Double
    
    init(number: Double) {
        self.number = number
    }
      
    func calculate(_ symbol: String) -> Double? {
        
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        
        return nil
    }
}
