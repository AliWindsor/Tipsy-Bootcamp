//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTotalField: UITextField!
    @IBOutlet weak var splitAmount: UILabel!
    
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    
    var percentage = 10.0
    var split = 2.0

    var calculatorBrain = CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func tipPercentChosen(_ sender: UIButton) {

        let p = sender.currentTitle
        
        percentage = Double((p?.dropLast())!) ?? 0.0 //remove % symbol and convert
        
        deselectButtons()
  
        sender.isSelected = true
    }
    
    @IBAction func splitStepper(_ sender: UIStepper) {
        split = sender.value
        splitAmount.text = String(format: "%.0f",split)
    }
    
    @IBAction func calculateButton(_ sender: Any) {

        calculatorBrain.getTotalSplit(bill: Double(billTotalField.text!) ?? 0.0, percent: percentage, split: split)
        self.performSegue(withIdentifier: "getResult", sender: self)
    }
    
    func deselectButtons () {
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getResult"{
            let resultVC = segue.destination as! ResultViewController
            
            resultVC.tip = calculatorBrain.getTip()
            resultVC.people = calculatorBrain.getPeople()
            resultVC.total = calculatorBrain.getTotal()
            
            
        }
    }
    
}

