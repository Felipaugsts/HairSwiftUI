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
                    Text("Pratos mais pedidos")
                        .font(.title2)
                        .padding(.top, 5)
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            FoodItem()
                            FoodItem()
                            FoodItem()
                        }
                    }
                    Text("Melhores Restaurantes")
                        .font(.title2)
                        .padding(.top, 20)
                    ScrollView(.vertical,  showsIndicators: false) {
                        ExtractedView()
                        ExtractedView()
                        ExtractedView()
                        ExtractedView()
                    }
                Spacer()
                }
            .padding()
            
            Button(action: {self.action = 1}) {
            Image(systemName: "cart")
                .resizable()
                .frame(width: 15, height: 15)
                .padding()
                .background(.yellow)
                .clipShape(Circle())
        }
        }
        
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct ExtractedView: View {
    var body: some View {
        HStack {
            Image("food")
                .resizable()
                .frame(width: 60, height: 60)
            
            VStack (alignment: .leading) {
                Text("Agua Doce Cachacaria - Tatuí")
                    .font(.callout)
                HStack {
                    Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .foregroundColor(.orange.opacity(0.6))
                    
                    Text("4.5")
                        .foregroundColor(.orange.opacity(0.6))
                        .fontWeight(.semibold)
                        .font(.footnote)
                    
                    Text("Brasileira")
                        .font(.footnote)
                        .foregroundColor(.black.opacity(0.8))
                        .fontWeight(.regular)
                    
                    Text("1.5 km")
                        .font(.footnote)
                        .foregroundColor(.black.opacity(0.8))
                        .fontWeight(.regular)
                }
                
                HStack {
                    Text("45-57 min")
                        .font(.footnote)
                        .foregroundColor(.gray)
                    
                    Text("Grátis")
                        .padding(.leading, 5)
                        .font(.footnote)
                        .foregroundColor(.green)
                }
            }
            Spacer()
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.gray.opacity(0.5))
        }
        .padding()
        .frame(height: 100)
        .background(.gray.opacity(0.1))
        .cornerRadius(12)
    }
}
