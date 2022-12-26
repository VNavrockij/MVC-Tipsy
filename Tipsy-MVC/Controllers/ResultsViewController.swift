//
//  ResultsViewController.swift
//  Tipsy-MVC
//
//  Created by Vitalii Navrotskyi on 24.12.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var settingsLabel: UILabel!
    
    var resultLabel: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = String(format: "%.2f", resultLabel)
    }
    
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
}
