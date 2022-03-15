//
//  API.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 08/03/22.
//

import Foundation
import Firebase
import FirebaseAuth
enum NetworkError: Error {
    case wrongPassword
    case badURL
}
protocol firebaseAPIProtocol {
    
    func signUserIn(email: String, password: String, completion: @escaping (Result< Int, NetworkError>) -> ())
    
}
class firebaseAPI: firebaseAPIProtocol {
    func signUserIn(email: String, password: String, completion: @escaping (Result<Int, NetworkError>) -> ()) {
        print(email, password)
        Auth.auth().signIn(withEmail: email, password: password) { AuthDataResult, Error in
            if Error == nil {
                completion(.success(200))
                print("success")
            }
            else {
                completion(.failure(.wrongPassword))
                print("error")
            }
        }
    }
    
    
    
}
