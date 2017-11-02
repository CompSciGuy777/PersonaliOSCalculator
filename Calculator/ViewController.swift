//
//  ViewController.swift
//  Calculator
//
//  Created by Christopher Davis on 3/12/17.
//  Copyright © 2017 Christopher Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func digitInput(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        } else{
            display.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        
        set{
            display.text = String(newValue)
        }
    }
    
    
    @IBAction func floatingPoint(_ sender: UIButton) {
        if !userIsInTheMiddleOfTyping {
            display.text = "0."
        }
        else if ((display.text?.range(of: ".")) == nil) {
            display.text = display.text! + "."
        }
        userIsInTheMiddleOfTyping = true
    }
    
    
    @IBAction func resetAndColorChange(_ sender: UIButton) {
        displayValue = 0
        
    }
    
    
    
    private var brain: CalculatorBrain = CalculatorBrain()
    
    
    @IBAction func preformOperation(_ sender: UIButton) {
        
        if userIsInTheMiddleOfTyping {
            brain.setOperand(displayValue)
            userIsInTheMiddleOfTyping = false
        }
        if let mathimaticalSymbol = sender.currentTitle {
            brain.performOperation(mathimaticalSymbol)
        }
        if let result = brain.result {
            displayValue = result
        }
    }
    
    
}
