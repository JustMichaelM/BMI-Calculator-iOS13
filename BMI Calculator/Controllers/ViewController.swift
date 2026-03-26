//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    private var height: Float = 1.5
    private var weight: Float = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Lubie Placki")
    }
    @IBAction func heightChange(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
    }
    @IBAction func weightChange(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
        weight = sender.value
    }
    
    @IBAction func calculatePress(_ sender: UIButton) {
        let bmi = weight / powf(height, 2)
        print(bmi)

    }
    
}

