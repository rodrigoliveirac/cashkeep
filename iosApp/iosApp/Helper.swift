//
//  Helper.swift
//  iosApp
//
//  Created by Rodrigo Cavalcante on 23/02/24.
//

import Foundation
import UIKit
import FirebaseCore

class FirebaseHelper: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {

      FirebaseApp.configure()

    return true
  }
}
