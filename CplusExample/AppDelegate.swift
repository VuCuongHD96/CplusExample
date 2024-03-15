//
//  AppDelegate.swift
//  CplusExample
//
//  Created by Work on 13/03/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard let window = window else {
            return false
        }
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let tabbarController = storyBoard.instantiateViewController(withIdentifier: "TabbarController") as? TabbarController else {
            return false
        }
        window.rootViewController = tabbarController
        return true
    }
}

