//
//  UserSettings.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 15/03/22.
//

import Foundation
import FirebaseAuth

class userSettings: ObservableObject {

    @Published var isLoggedIn: Bool {
        didSet {
            let user = Auth.auth().addStateDidChangeListener { auth, user in
                if let user = user {
                    guard let name = user.displayName else { return }
                    UserDefaults.standard.set(name, forKey: "username")
                } else {
                    UserDefaults.standard.removeObject(forKey: "username")
                }
            }
         
            
        }
    }
    init() {
        self.isLoggedIn = false
        
    }
}
