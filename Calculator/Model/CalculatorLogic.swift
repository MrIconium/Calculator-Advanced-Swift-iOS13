//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by Mehmet Emrah Konya on 26.09.2024.
//  Copyright © 2024 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    private var intermediateCalculation: (n1:Double, calcMethod:String)?
    
    mutating func setNumber(_ number: Double){
        self.number = number
    }
      
    mutating func calculate(_ symbol: String) -> Double? {
        
        if let nb = number {
            if symbol == "+/-" {
                return nb * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return nb / 100
            } else if symbol == "=" {
                return performTwoNumCalculation(n2: nb)
            } else {
                intermediateCalculation = (n1: nb, calcMethod: symbol)
                return nb
            }
        }
        
        return nil
    }
    
    private func performTwoNumCalculation(n2: Double) -> Double? {
        if let n1 = intermediateCalculation?.n1, let calcMethod = intermediateCalculation?.calcMethod {
            switch calcMethod {
            case "+": return n1 + n2
            case "-": return n1 - n2
            case "×": return n1 * n2
            case "÷": return n1 / n2
            default: return nil
            }
        }

        return nil
    }
}
