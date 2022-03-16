//
//  HomeViewNavigation.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 15/03/22.
//

import SwiftUI

struct HomeViewNavigation: View {
    @State private var searchIsPresented = false
    @State private var isShowing = false
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing {
                    SideMenuView(isShowing: $isShowing)
                }
                    
                HomeView()
                    .background(.white)
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 200 : 0, y: isShowing ? 44 : 0)
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .allowsHitTesting(isShowing ? false : true)
                    .shadow(radius: isShowing ? 10 : 0)
                    
                    
                
                    
            .navigationBarItems(leading:
                                    Button(action: {
                
                withAnimation(.spring())
                              {
                    isShowing.toggle()
                }
                
            }){
                                    Image(systemName: "line.horizontal.3")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                })
            
            .navigationBarItems(trailing:
                                    Button(action: {
                self.searchIsPresented.toggle()
                                                }) {
                                    Image(systemName: "magnifyingglass")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .padding(10)
                                    .foregroundColor(.white)
                                    .background(.secondary)
                                    .clipShape(Circle())
                                    .shadow(radius: 8)
            }
                                    .sheet(isPresented: $searchIsPresented, onDismiss: { }, content: SearchBarItems.init)
                                
            )
            
            .navigationBarTitleDisplayMode(.inline)
            }
            .onAppear {
                isShowing = false
            }
        }
    }
}

struct HomeViewNavigation_Previews: PreviewProvider {
    static var previews: some View {
        HomeViewNavigation()
    }
}
