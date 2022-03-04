//
//  SideMenuOptionView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI

struct SideMenuOptionView: View {
    let option: SideMenuViewModel
    var body: some View {
        HStack (spacing: 16) {
            Image(systemName: option.imageName)
                .frame(width: 24, height: 24)
            
            Text(option.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct SideMenuOptionView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionView(option: .Favorites)
    }
}
