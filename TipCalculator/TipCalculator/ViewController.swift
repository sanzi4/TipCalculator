//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sanzida Sultana on 7/21/20.
//  Copyright © 2020 Sanzida Sultana. All rights reserved.
//

import UIKit
import GradientLoadingBar

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    private let gradientLoadingBar = GradientLoadingBar()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        gradientLoadingBar.fadeIn()
        print("Hello This is Your Price!!")
        gradientLoadingBar.fadeOut()
    }
    
    @IBAction func calculatedTax(_ sender: Any) {
        
        // Get the inital bill amount
        let billTotal = Double(billField.text!) ?? 0
        
        // the tip options
        let tipPercentage = [0.15, 0.18, 0.2]
        
        // Calculate the tip and total
        let tip = billTotal * tipPercentage[tipControl.selectedSegmentIndex]
        
        // Get the total with the tip added to it
        
        let total = billTotal + tip
        
        
        // Now we have to update the tip and total label and display it to the user
        
        // Display the tip with a percentage sign
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
}

