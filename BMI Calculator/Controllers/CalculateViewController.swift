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
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Lubie Placki")
    }
    @IBAction func heightChange(_ sender: UISlider) {
        heightLabel.text = String(format: "%.2f", sender.value) + "m"
        calculatorBrain.height = sender.value
    }
    @IBAction func weightChange(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + "Kg"
        calculatorBrain.weight = sender.value
    }
    
    @IBAction func calculatePress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToResults", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults" {
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.bmiValue = calculatorBrain.bmiString
        }
    }
}

