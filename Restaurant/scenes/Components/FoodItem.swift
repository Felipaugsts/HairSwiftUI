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
            HStack {
                Text("Very hot")
                    .font(.footnote)
                    .foregroundColor(.primary)
            }
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .shadow(radius: 8)
            
            Text("Classic")
                .font(.headline)
            Text("Platter")
                .foregroundColor(.secondary)
                .font(.subheadline)
                .padding(.bottom, 12)
            HStack {
            Text("$12.99")
                .font(.title)
                Spacer()
                Button(action: {} ) {
                    Image(systemName: "cart")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .foregroundColor(.black)
//                    Image(systemName: "plus.circle")
//                        .resizable()
//                        .frame(width: 10, height: 10, alignment: .)
                    
                }
       
            }
            .padding([.leading, .trailing], 15)
        }.frame(width: 180, height: 250)
            .background(Color.secondary.opacity(0.3))
            .cornerRadius(12)
            
    }
}
