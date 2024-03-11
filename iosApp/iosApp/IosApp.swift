//
//  iosAppApp.swift
//  iosApp
//
//  Created by Rodrigo Cavalcante on 20/02/24.
//

import Foundation
import SwiftUI
import Shared

@main
struct IosApp: App {
    
    @UIApplicationDelegateAdaptor(FirebaseHelper.self) var delegate

    @StateObject var viewmodel = LoginViewModel(loginService: UserService())
    
    
    var body: some Scene {
        
        WindowGroup {
            ContentView(viewmodel: viewmodel)
        }
    }
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        FirebaseApp.configure()
//    }
}

