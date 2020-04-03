//
//  AppDelegate.swift
//  Bai2
//
//  Created by APPLE on 4/2/20.
//  Copyright © 2020 ios12. All rights reserved.
//


import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
                
        
        NSLog("ThangND26: willFinishLaunchingWithOptions")
        
        return true
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {


        NSLog("ThangND26: didFinishLaunchingWithOptions")

        return true

    }

    func applicationWillResignActive(_ application: UIApplication) {

        

        NSLog("ThangND26: applicationWillResignActive")

        

    }

    func applicationDidEnterBackground(_ application: UIApplication) {

        

        NSLog("ThangND26: applicationDidEnterBackground")

        

    }

    func applicationWillEnterForeground(_ application: UIApplication) {

        NSLog("ThangND26: applicationWillEnterForeground")

    }


    
    func applicationDidBecomeActive(_ application: UIApplication) {

        NSLog("ThangND26: applicationDidBecomeActive")

    }

    func applicationWillTerminate(_ application: UIApplication) {

        NSLog("ThangND26: applicationWillTerminate")

    }

}
