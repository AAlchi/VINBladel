//
//  VinBladelApp.swift
//  VinBladel
//
//  Created by Ali AI on 4/2/24.
//

import SwiftUI
import FirebaseCore

@main
struct VinBladelApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
