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

    
    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping = false
    
    @IBAction func digitInput(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        } else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }

    @IBAction func preformOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathimaticalSymbol = sender.currentTitle {
            switch mathimaticalSymbol {
            case "π":
                display!.text = String(Double.pi)
            default:
                break
        }
    }
}
}
