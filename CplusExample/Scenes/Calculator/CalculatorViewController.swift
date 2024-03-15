//
//  CalculatorViewController.swift
//  CplusExample
//
//  Created by Work on 13/03/2024.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var secondTextField: UITextField!
    @IBOutlet private weak var firstTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addAction(_ sender: Any) {
        let firstText = firstTextField.text ?? ""
        let firstNumber = Int32(firstText) ?? 0
        let secondText = secondTextField.text ?? ""
        let secondNumber = Int32(secondText) ?? 0
        let sumResult = Calculator.add(firstNumber, secondNumber)
        resultLabel.text = String(sumResult)
    }
    
    @IBAction func minusAction(_ sender: Any) {
        let firstText = firstTextField.text ?? ""
        let firstNumber = Int32(firstText) ?? 0
        let secondText = secondTextField.text ?? ""
        let secondNumber = Int32(secondText) ?? 0
        let subResult = Calculator.sub(firstNumber, secondNumber)
        resultLabel.text = String(subResult)
    }
}
