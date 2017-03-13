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

    @IBAction func digitInput(_ sender: UIButton) {
        print(sender.currentTitle ?? "Hello")
        
    }


}

