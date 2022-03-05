//
//  Components.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI

struct FoodItem: View {
    var body: some View {
        
        VStack (alignment: .center) {
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .shadow(radius: 8)
            
            Text("Classic")
                .font(.title2)
            Text("Platter")
                .foregroundColor(.secondary)
                .font(.subheadline)
                .padding(.bottom, 12)
            HStack {
            Text("$12.99")
                    .font(.title3)
                Spacer()
                Button(action: {} ) {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.black)
//                    Image(systemName: "plus.circle")
//                        .resizable()
//                        .frame(width: 10, height: 10, alignment: .)
                    
                }
       
            }
            .padding([.leading, .trailing], 15)
        }.frame(width: 170, height: 210)
            .background(Color.secondary.opacity(0.2))
            .cornerRadius(12)
            
            
    }
}
