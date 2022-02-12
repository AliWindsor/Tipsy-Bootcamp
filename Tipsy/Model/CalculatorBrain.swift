//
//  CalculatorBrain.swift
//  Tipsy
//
//  Created by Alicia Windsor on 11/02/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var calculator = Calculator()

    mutating func getTotalSplit (bill : Double, percent : Double, split : Double){
        let tip : Double = bill * (percent / 100.0) + bill
         
        let finalAmount = tip/split
        print(finalAmount)
        
        calculator = Calculator(billAmount: bill, tipPercentage: percent, splitNumber: split, totalSplitAmount: finalAmount)
    }
    
    func getTotal () -> String {
        return String(format: "%.2f", calculator.totalSplitAmount ?? 0.0)
    }
    
    func getTip() -> String {
        return String(format: "%.0f", calculator.tipPercentage ?? 0.0)
    }
    
    func getPeople() -> String {
        return String(format: "%.0f", calculator.splitNumber ?? 0.0)
    }
    
}
