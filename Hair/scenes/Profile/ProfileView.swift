//
//  ProfileView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 16/03/22.
//

import SwiftUI

struct ProfileView: View {
    @State var name = "Felipe Augusto"
    @State var city = "Moncton, NB"
    @State var email = "Email"
    var body: some View {
        VStack {
            Image("hairlogo")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 2)
            
            ULineTextField(fieldText: "Username", field: $name)
                .padding([.top, .leading, .trailing], 30)
            ULineTextField(fieldText: "City", field: $city)
                .padding([.top, .leading, .trailing], 30)
            ULineTextField(fieldText: "Email", field: $email)
                .padding([.top, .leading, .trailing], 30)
            HStack {
                Spacer()
                Button(action: {}) {
                    Text("Save")
                        .padding()
                        .foregroundColor(.white)
                        .font(.body)
                        
                }
                .frame(width: 110, height: 40)
                .background(.blue.opacity(0.7))
                .cornerRadius(5)
                
            }
            .padding(.trailing, 43)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 500)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
