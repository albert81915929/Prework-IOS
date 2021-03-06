//
//  ViewController.swift
//  Prework
//
//  Created by Jiatai Sun on 11/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipContorl: UISegmentedControl!
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        // Get bill amount from text field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // Get total tips by multipling tip * tipPercentage
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipContorl.selectedSegmentIndex]
        let total = bill + tip
        
        //update Tip Amount Label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

