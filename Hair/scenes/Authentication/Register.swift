//
//  Register.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 15/03/22.
//

import SwiftUI

struct Register: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    let userAuth: AuthViewModel = AppContainer.shared.resolve(AuthViewModel.self)!
    @EnvironmentObject var settings: userSettings
    var body: some View {
        
        VStack {
            Text("Register")
                .font(.title)
            Spacer()
            ULineTextField(fieldText: "Display Name", field: $name)
                .padding(.bottom, 20)
            ULineTextField(fieldText: "Email", field: $email)
                .padding(.bottom, 20)
            UnderLineSecurityField(field: $password, fieldText: "Password")
            
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    
                    if validateFields() {
                        userAuth.register(email: email, password: password, displayName: name, Completion: { user in
                            if user {
                                UserDefaults.standard.set(name, forKey: "username")
                                settings.isLoggedIn = true
                            }
                        })
                    }
                    
                }) {
                    Text("Register")
                }
            }.padding(.trailing, 20)
            Spacer()
        }
        .frame(height: 350)
        
    }
    func validateFields() -> Bool {
        
        if name.isEmpty == false &&
           email.isEmpty == false &&
            password.isEmpty == false {
            return true
        }
        else {
            return false
        }
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
