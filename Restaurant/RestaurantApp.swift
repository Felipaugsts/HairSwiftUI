//
//  RestaurantApp.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI
import FirebaseAuth
import Firebase

@main
struct RestaurantApp: App {
  
    init() {
      FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userSettings())
        }
    }
}
