//
//  AppDelegate.swift
//  Bai1+2
//
//  Created by APPLE on 4/7/20.
//  Copyright © 2020 ios12. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        if window?.rootViewController as? UITabBarController != nil {
               let tabBarController = window!.rootViewController as! UITabBarController
               tabBarController.selectedIndex = 1
           }
        
        return true
    }

    // MARK: UISceneSession Lifecycle



}

