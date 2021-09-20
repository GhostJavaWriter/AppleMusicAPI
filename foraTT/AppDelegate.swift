//
//  AppDelegate.swift
//  foraTT
//
//  Created by Bair Nadtsalov on 11.09.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let controller = TabBarViewController()
        
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        
        return true
    }
}

