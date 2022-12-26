//
//  ViewController.swift
//  Tipsy-MVC
//
//  Created by Vitalii Navrotskyi on 20.12.2022.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var result: Float = 0.0

    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        switch sender.tag {
        case 0:
            zeroPctButton.isSelected = true
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = false
        case 1:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = true
            twentyPctButton.isSelected = false
        case 2:
            zeroPctButton.isSelected = false
            tenPctButton.isSelected = false
            twentyPctButton.isSelected = true
        default:
            print("err")
        }
        
        billTextField.endEditing(true)
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(Int(sender.value))
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let arrPctBtn: [UIButton: Float] = [zeroPctButton : 0.0, tenPctButton: 0.1, twentyPctButton: 0.2]
        for btn in arrPctBtn.keys {
            if btn.isSelected {
                if let value = arrPctBtn[btn] {
                    let bill = Float(billTextField.text!)
                    let numberPersons = Float(splitNumberLabel.text!)
                    result = (bill! + (bill! * value)) / numberPersons!
                    print(result)
                }
            }
        }
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let resultVC = segue.destination as! ResultsViewController
            resultVC.resultLabel = result
        }
    }
    
    
    
}

