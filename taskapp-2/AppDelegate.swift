//
//  AppDelegate.swift
//  taskapp-2
//
//  Created by 木村太郎 on 2020/08/29.
//  Copyright © 2020 taro.kimura. All rights reserved.
//

import UIKit
import UserNotifications    // 追加

@UIApplicationMain
class AppDelegate: UIResponder,  UIApplicationDelegate, UNUserNotificationCenterDelegate{



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       // ユーザに通知の許可を求める --- ここから ---
       let center = UNUserNotificationCenter.current()
       center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
           // Enable or disable features based on authorization
       } // --- ここまで追加 ---
        // Override point for customization after application launch.
       
         center.delegate = self     // 追加

        return true
    }

     // アプリがフォアグラウンドの時に通知を受け取ると呼ばれるメソッド --- ここから ---
       func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
           completionHandler([.alert, .sound])
       } // --- ここまで追加 ---
    
    
    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

