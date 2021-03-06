//
//  AppDelegate.swift
//  Web-view
//
//  Created by Aleksey Antokhin on 23.11.2020.
//  Copyright © 2020 Aleksey Antokhin. All rights reserved.
//

import UIKit
import OneSignal


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
    [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
      
      //Remove this method to stop OneSignal Debugging
      OneSignal.setLogLevel(.LL_VERBOSE, visualLevel: .LL_NONE)

      //START OneSignal initialization code
      let onesignalInitSettings = [kOSSettingsKeyAutoPrompt: false, kOSSettingsKeyInAppLaunchURL: false]
      
      // Replace 'YOUR_ONESIGNAL_APP_ID' with your OneSignal App ID.
      OneSignal.initWithLaunchOptions(launchOptions,
        appId: "3e047a8d-7fcf-4ae5-b680-bc3889489cb6",
        handleNotificationAction: nil,
        settings: onesignalInitSettings)

      OneSignal.inFocusDisplayType = OSNotificationDisplayType.notification;

      // promptForPushNotifications will show the native iOS notification permission prompt.
      // We recommend removing the following code and instead using an In-App Message to prompt for notification permission (See step 8)
      OneSignal.promptForPushNotifications(userResponse: { accepted in
        print("User accepted notifications: \(accepted)")
      })
      //END OneSignal initializataion code

       return true
    }

    
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

