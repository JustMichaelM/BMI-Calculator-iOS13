//
//  StartViewController.swift
//  BMI Calculator
//
//  Created by Michał on 27/03/2026.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Lubie Placki4")
    }
    
    @IBAction func startbuttonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "toCalculate", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculate" {
            if let destination = segue.destination as? CalculateViewController {
                destination.modalPresentationStyle = .fullScreen
            }
        }
    }
}
