//
//  Components.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI


struct FoodItem: View {
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Image("flame.fill")
                    .resizable()
                    .frame(width: 16, height: 16)
                    .foregroundColor(.red)
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
            Text("$12.99")
                .font(.title)
        }.frame(width: 180, height: 250)
            .background(Color.secondary.opacity(0.3))
            .cornerRadius(12)
            
    }
}
