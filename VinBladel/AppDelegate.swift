//
//  AppDelegate.swift
//  VinBladel
//
//  Created by Halas Wolff on 5/17/24.
//

import Foundation
import UIKit
import FirebaseCore
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        return true
    }
}
