//
//  AppDelegate.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow()
        self.window?.rootViewController = ProductListAssembly().view()
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

