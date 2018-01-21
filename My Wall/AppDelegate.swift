//
//  AppDelegate.swift
//  My Wall
//
//  Created by Sobhan Eskandari on 11/23/17.
//  Copyright © 2017 Sobhan Eskandari. All rights reserved.
//

import UIKit
import Ambience
import Appodeal


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Set navigation bar transparent
//        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
//        UINavigationBar.appearance().shadowImage = UIImage()
//        UINavigationBar.appearance().backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.0)
//        UINavigationBar.appearance().isTranslucent = true
//
        _ = Ambience.shared
        
        let defaults = UserDefaults.standard
        let defaultValue = ["InappPurchaseBought" : false]
        let darkMode = ["darkMode" : false]
        defaults.register(defaults: defaultValue)
        defaults.register(defaults: darkMode)
        
        // Setting Appodeal
        let adTypes: AppodealAdType = [.interstitial]
        Appodeal.initialize(withApiKey: "47a1ef268792b466f8816ac424718e7d073020e7cbf9bcd7", types:  adTypes)
        
        AppDelegate.setupArmchair()
        return true
    }
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    class func setupArmchair() {
        // Normally, all the setup would be here.
        // But, because we are presenting a few different setups in the example,
        // The config will be in the view controllers
        //     Armchair.appID("408981381") // Pages
        //
        // It is always best to load Armchair as early as possible
        // because it needs to receive application life-cycle notifications
        //
        // NOTE: The appID call always has to go before any other Armchair calls
        Armchair.appID("361309726")
        Armchair.debugEnabled(true)
    }

}
import Armchair

extension AppDelegate {
    
    
   
}


