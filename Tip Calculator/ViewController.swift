//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Daniella Montinola on 9/1/19.
//  Copyright © 2019 Daniella Montinola. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // outlet connection
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    // action connection
    @IBAction func calculateTip(_ sender: Any) {
        
        // 1. get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        // 2. calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip

        // 3. update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    @IBAction func onTap(_ sender: Any) {
        // how to dismiss the keyboard
        view.endEditing(true)
    }
}

