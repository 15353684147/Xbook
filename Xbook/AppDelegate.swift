//
//  AppDelegate.swift
//  Xbook
//
//  Created by 快邦 on 2017/9/21.
//  Copyright © 2017年 快邦. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        self.window = UIWindow(frame:CGRect(x:0,y:0,width:SCREEN_WIDTH,height:SCREEN_HEIGHT))
        
        let rank = UINavigationController(rootViewController: RankViewController())
        let search = UINavigationController(rootViewController: SearchViewController())
        let push = UINavigationController(rootViewController: PushViewController())
        let circle = UINavigationController(rootViewController: CircleViewController())
        let more = UINavigationController(rootViewController: MoreViewController())
        
        let tabbar = UITabBarController()
        
        tabbar.viewControllers = [rank,search,push,circle,more]
        
        let item1 = UITabBarItem(title: "排行榜", image: UIImage(named: "bio"), selectedImage: UIImage(named: "bio_red"))
        let tabitem2 = UITabBarItem(title: "发现", image: UIImage(named: "timer 2"), selectedImage: UIImage(named: "timer 2"))
        let tabitem3 = UITabBarItem(title: "", image: UIImage(named: "pencil"), selectedImage: UIImage(named: "pencil_red"))
        let tabitem4 = UITabBarItem(title: "圈子", image: UIImage(named: "users two-2"), selectedImage: UIImage(named: "users two-2_red"))
        let tabitem5 = UITabBarItem(title: "更多", image: UIImage(named: "more"), selectedImage: UIImage(named: "more_red"))
        
        rank.tabBarItem = item1
        search.tabBarItem = tabitem2
        push.tabBarItem = tabitem3
        circle.tabBarItem = tabitem4
        more.tabBarItem = tabitem5
        
        rank.tabBarController?.tabBar.tintColor = #colorLiteral(red: 0.9215686275, green: 0.4470588235, blue: 0.462745098, alpha: 1)
        self.window?.rootViewController = tabbar
        self.window?.makeKeyAndVisible()
        
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


}

