//
//  HomeView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    @EnvironmentObject var settings: userSettings
    var body: some View {
        VStack {
            if settings.isLoggedIn {
            HomeViewNavigation()
            } else {
                SingIn()
            }
        }
        .onAppear(perform: authenticate)
    }
    
    func authenticate() {
        let user = Auth.auth().currentUser
        
        if user != nil {
            settings.isLoggedIn = true
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
