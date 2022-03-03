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
                    

                
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
