//
//  CalculatorBrain.swift
//  Calculator
//
//  Created by Chris Davis on 6/22/17.
//  Copyright © 2017 Christopher Davis. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    private var accumulato: Double?
    
    private enum OperationType {
        case constant(Double)
        case unaryOperation((Double) -> Double)
    }
    
    
    private var operations: Dictionary<String,Operation> = [
        "π" : OperationType.constant(Double.pi),
        "e" : OperationType.constant(M_E),
        "√" : OperationType.unaryOperation(sqrt),
        "cos" : OperationType.unaryOperation(cos)
    ]
    
    
    
}

func performOperation(_ symbol: String){
    if let operation = operations[symbol] {
        switch operation {
        case .constant(let value):
            accumulator = value
        case .unaryOperation(let function):
            if accumulator != nil { accumulator = function(accumulator!)
            }
        }
    }
}




func setOperand(_ operand: Double) {
        accumulator = operand
    }
    
    var result: Double? {
        get{
            return accumulator
        }
    }
}
