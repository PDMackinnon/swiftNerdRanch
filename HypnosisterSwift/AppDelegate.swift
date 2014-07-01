//
//  AppDelegate.swift
//  HypnosisterSwift
//
//  Created by Paul Mackinnon on 01/07/2014.
//  Copyright (c) 2014 Dundee University. All rights reserved.
//

import UIKit



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        // Override point for customization after application launch.
        
        let vFrame:CGRect = CGRectMake(60, 140, 120, 150)
        
        let hView:HypnosisView = HypnosisView(frame: vFrame);
      //  hView.backgroundColor = UIColor.blueColor()
        
        self.window!.addSubview(hView)
        

        let v2Frame:CGRect = CGRectMake(200, 10, 50, 250)
        
        let h2View:HypnosisView = HypnosisView(frame: v2Frame);
        h2View.backgroundColor = UIColor.redColor()
        
        self.window!.addSubview(h2View)
        
        
        let v3Frame:CGRect = CGRectMake(10, 340, 300, 25)
        
        let h3View:HypnosisView = HypnosisView(frame: v3Frame);
     //   h3View.backgroundColor = UIColor.greenColor()
        
        self.window!.addSubview(h3View)
        
        
        
        self.window!.backgroundColor = UIColor.whiteColor()
        self.window!.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

