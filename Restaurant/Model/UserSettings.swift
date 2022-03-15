//
//  UserSettings.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 15/03/22.
//

import Foundation

class userSettings: ObservableObject {
    
    @Published var isLoggedIn: Bool {
        didSet {
            print("user logged in setting up users informations")
        }
    }
    init() {
        self.isLoggedIn = false
    }
}
