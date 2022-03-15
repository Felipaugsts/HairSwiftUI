//
//  View Model.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 08/03/22.
//

import Foundation
import SwiftUI
import FirebaseAuth

class AuthViewModel  {
    
    
    var api: firebaseAPIProtocol
    init(api: firebaseAPIProtocol) {
        self.api = api
    }
    
    func logout(completion: @escaping (Bool) -> ()) {
            try! Auth.auth().signOut()
        if Auth.auth().currentUser == nil {
            completion(true)
        }
    }
    
    func signIn(email: String, password: String, completion: @escaping (String) -> ())  {
        api.signUserIn(email: email, password: password) { user in
            switch user {
            case .success(let num):
                completion("\(num)")
            case .failure(let error):
                completion("\(error)")
            }
        }
    }
}
