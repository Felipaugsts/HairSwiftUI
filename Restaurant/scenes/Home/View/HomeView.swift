//
//  ContentView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 03/03/22.
//

import SwiftUI

struct HomeView: View {
    @State private var action: Int? = 0
    @State var searchText = ""
    
    var body: some View {
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
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
