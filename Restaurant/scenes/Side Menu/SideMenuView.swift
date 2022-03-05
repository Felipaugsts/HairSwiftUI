//
//  SideMenuView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI

struct SideMenuView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.orange.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack {
//                Header
                SideMenuHeaderView(isShowing: $isShowing)
                    .foregroundColor(.white)
                    .frame(height: 150)
//                Options
                ForEach(SideMenuViewModel.allCases, id: \.self) { option in
                    NavigationLink(destination: option.views) {
                        SideMenuOptionView(option: option)
                    }
                }
                Spacer()
                
            }
        }
        .navigationBarHidden(true)
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
