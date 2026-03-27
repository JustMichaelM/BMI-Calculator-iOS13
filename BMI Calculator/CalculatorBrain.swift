//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Michał on 27/03/2026.
//  Copyright © 2026 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var height: Float = 1.5
    var weight: Float = 100
    
    private var bmi: Float {
        return weight / powf(height,2)
    }
    
    var bmiString: String {
        return String(format: "%.2f", bmi)
    }
}
