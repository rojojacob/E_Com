//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    @State private var isLoggedIn = false // Track login state
    
    var body: some Scene {
        WindowGroup {
            // Use conditional statement to determine which view to show
            if isLoggedIn {
                ContentView()
                    .environmentObject(Shop())
            } else {
                LoginView { success in
                                    isLoggedIn = success // Set isLoggedIn based on the login status
                                } // Pass the action to set isLoggedIn to true
            }
        }
    }
}
