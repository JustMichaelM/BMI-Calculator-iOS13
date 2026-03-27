//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Michał on 27/03/2026.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    var bmiValue: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki 3!")
        
        bmiLabel.text = bmiValue
        
    }
    
    @IBAction func recalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }


}
