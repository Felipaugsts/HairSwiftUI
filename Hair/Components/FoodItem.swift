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
            
            Image("hairlogo")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 2)
            
            Text("Hair Lux")
                .font(.title2)
            Text("Tatuí")
                .foregroundColor(.secondary)
                .font(.subheadline)
                .padding(.bottom, 12)

            Text("R$ 30.00")
                    .font(.title3)
        
            .padding([.leading, .trailing], 15)
        }.frame(width: 170, height: 210)
            .background(Color.secondary.opacity(0.2))
            .cornerRadius(12)
            
            
    }
}
