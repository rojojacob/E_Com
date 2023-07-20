//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
