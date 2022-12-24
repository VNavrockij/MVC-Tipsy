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
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let arrPctBtn: [UIButton: Float] = [zeroPctButton : 0.0, tenPctButton: 0.1, twentyPctButton: 0.2]
        for btn in arrPctBtn.keys {
            if btn.isSelected {
                if let value = arrPctBtn[btn] {
                    print(value)
                }
            }
        }
    }
    
    
}

