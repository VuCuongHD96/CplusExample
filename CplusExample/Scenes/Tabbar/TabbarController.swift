//
//  TabbarController.swift
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

import Foundation
import UIKit

class TabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupTabbar()
    }
    
    private func setupTabbar() {
        let calculatorTabItem = UITabBarItem(title: "Calculator",
                                             image: UIImage(named: "calculator")?
            .withRenderingMode(.alwaysOriginal),
                                             tag: 0)
        let calculatorScreen = CalculatorViewController()
        calculatorScreen.tabBarItem = calculatorTabItem
        viewControllers = [calculatorScreen]
    }
}
