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
    func register(email: String, password: String, displayName: String, Completion: @escaping (Bool) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { AuthDataResult, Error in
              if let user = AuthDataResult?.user {
                  
                  let changeRequest = user.createProfileChangeRequest()
                  changeRequest.displayName = displayName
                  changeRequest.commitChanges { error in
                      if error == nil {
                          print("success")
                      } else {
                          print("error", error)
                      }
                  }
              Completion(true)
                  
              } else {
              Completion(false)
              }
          }
    }
}
