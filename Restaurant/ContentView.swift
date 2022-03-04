//
//  ContentView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack (alignment: .bottom) {
            VStack (alignment: .leading) {
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .resizable()
                        .frame(width: 24, height: 24)
                    Spacer()
                    
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .padding()
                        .foregroundColor(.white)
                        .background(.secondary)
                        .clipShape(Circle())
                        .shadow(radius: 8)
                }
                    Text("Food Bazaar")
                        .font(.title)
                        .foregroundColor(.secondary)
                    Text("26 results")
                    .font(.subheadline)
                        .foregroundColor(.primary)
                        
                VStack(alignment: .leading) {
                    Text("Classic")
                        .font(.title)
                        .padding(.top, 10)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            FoodItem()
                            
                        }
                      
                    }
                }
                Spacer()
                }
            .padding()
            .edgesIgnoringSafeArea(.bottom)
        Button(action: {}) {
            Image(systemName: "cart")
                .resizable()
                .frame(width: 12, height: 12)
                .padding()
                .background(.yellow)
                .clipShape(Circle())
                .padding()
            Text("4 items")
                .foregroundColor(.white)
                .padding(.horizontal)
            }
                .background(.black.opacity(0.8))
                .clipShape(Capsule())
                .shadow(color: .black.opacity(0.2), radius: 20, x: 0, y: 20)
        }
    }
}

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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
