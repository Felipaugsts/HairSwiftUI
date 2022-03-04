//
//  ContentView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI

struct ContentView: View {
    @State private var action: Int? = 0
    var body: some View {
        NavigationView {
        ZStack (alignment: .bottom) {
                VStack(alignment: .leading) {
                    NavigationLink(destination: Cart(), tag: 1, selection: $action) {
                                       EmptyView()
                                   }
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
                Spacer()
                }
            .padding()
            .edgesIgnoringSafeArea(.bottom)
            
            Button(action: {self.action = 1}) {
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
         
        .navigationBarItems(leading: Image(systemName: "line.horizontal.3")
                                .resizable()
                                .frame(width: 24, height: 24))
        
        .navigationBarItems(trailing:
                                Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .padding(15)
                                .foregroundColor(.white)
                                .background(.secondary)
                                .clipShape(Circle())
                                .shadow(radius: 8))
        .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
