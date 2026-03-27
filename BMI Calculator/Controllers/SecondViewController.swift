//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Michał on 27/03/2026.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var bmiValue: String = "0.0"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki 2!")
        
        view.backgroundColor = .green
        
        let label = UILabel()
        label.text = bmiValue
        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
        view.addSubview(label)
    }
}
