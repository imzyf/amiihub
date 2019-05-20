//
//  AppDelegate.swift
//  amiihub
//
//  Created by  moma on 2019/1/9.
//  Copyright © 2019 imzyf. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let libsManager = LibsManager.shared
        libsManager.setupLibs(with: window)

        // Show initial screen
        Application.shared.presentInitialScreen(in: window!)

        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
 
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
 
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
 
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
     
    }

    func applicationWillTerminate(_ application: UIApplication) {
 
    }

}
