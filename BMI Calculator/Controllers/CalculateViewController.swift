//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    private var height: Float = 1.5
    private var weight: Float = 100
    private var bmi: Float = 0.0
    
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
        bmi = weight / powf(height, 2)
        print(bmi)
        
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = String(format: "%.1f", bmi)
            
        }
    }
    
}

