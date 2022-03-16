//
//  SideMenuView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI
import FirebaseAuth

struct SideMenuView: View {
    let userAuth: AuthViewModel = AppContainer.shared.resolve(AuthViewModel.self)!
    @Binding var isShowing: Bool
    @EnvironmentObject var settings: userSettings
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
//                Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 150)
//                Options
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                      NavigationLink(destination: option.views) {
                        SideMenuOptionView(option: option)
                    }
                }
                Button(action: {
                    userAuth.logout(completion: { user in
                        if user {
                            settings.isLoggedIn = false
                        }
                    })
            
                }) {
                HStack (spacing: 16) {
                    Image(systemName: "arrow.left.square")
                        .frame(width: 24, height: 24)
                    
                    Text("Logout")
                        .font(.system(size: 15, weight: .semibold))
                    Spacer()
                }
                .padding()
                .foregroundColor(.white)
                
            }
                Spacer()
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}

