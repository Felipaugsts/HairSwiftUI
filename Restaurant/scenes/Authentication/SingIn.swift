//
//  SingIn.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI

struct SingIn: View {
        @State var Emailfield = ""
        @State var Passwordfield = ""
        @State var loading = false
    @EnvironmentObject var settings: userSettings
    
        let userAuth: AuthViewModel = AppContainer.shared.resolve(AuthViewModel.self)!
    
        var body: some View {
            ZStack {
                
            VStack (spacing: 25) {
            
           Text("Sign in")
                    .font(.title)
                    .fontWeight(.semibold)
                
                ULineTextField(fieldText: "Email", field: $Emailfield)
                UnderLineSecurityField(field: $Passwordfield, fieldText: "password")
               
                
                Button(action: {
                    
                    if !Emailfield.isEmpty && !Passwordfield.isEmpty {
                        loading = true
                        userAuth.signIn(email: Emailfield, password: Passwordfield) { user in
                            if user == "200" {
                                print("user", user)
                                settings.isLoggedIn = true
                                loading = false
                                print("logged in", settings.isLoggedIn)
                            } else {
                                loading = false
                                print("not Logged", settings.isLoggedIn)
                            }
                            
                        }
                    }
                }) {
                    Text(loading ? "loading..." : "Login")
                        .foregroundColor(.white)
                        .font(.title2)
                }
                .frame(width: UIScreen.main.bounds.width)
                .padding([.leading, .trailing], -10)
                .padding([.top, .bottom], 4)
                .background(.blue)
                .cornerRadius(10)
                .opacity(loading ? 0.4 : 1.0)

                
                Button(action: {}) {
                    Text("Register")
                        .foregroundColor(.blue)
                        .font(.title2)
                }
                
                .frame(width: UIScreen.main.bounds.width)
                .padding([.leading, .trailing], -10)
                .padding([.top, .bottom], 4)
                .background(.blue.opacity(0.05))
                .cornerRadius(10)
                .opacity(loading ? 0.4 : 1.0)
                
                
            }
            .background(.white.opacity(0.5))
            .frame(height: 450)
            }
          
            .edgesIgnoringSafeArea(.top)
            .disabled(loading)
            
        }
    }

struct SingIn_Previews: PreviewProvider {
    static var previews: some View {
        SingIn()
    }
}
