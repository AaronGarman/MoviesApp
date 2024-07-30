//
//  MoviesAppApp.swift
//  MoviesApp
//
//  Created by Aaron Garman on 7/24/24.
//

import SwiftUI
import FirebaseCore

@main
struct MoviesAppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
