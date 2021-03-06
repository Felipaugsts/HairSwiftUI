//
//  SideMenuHeaderView.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI

struct SideMenuHeaderView: View {
    @Binding var isShowing: Bool
    @State var userName = ""
    var body: some View {
        ZStack (alignment: .topTrailing) {
            Button(action: {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            }) {
                Image(systemName: "xmark")
                    .frame(width: 52, height: 52)
                    .foregroundColor(.white)
                    .padding()
            }
            VStack(alignment: .leading) {
                Image("phil")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                HStack{
                    Text(userName)
                    .font(.system(size: 24, weight: .semibold))
                Spacer()
                }
                Spacer()
            }
            .padding()
        }
        .onAppear(perform: getUserName)
    }
    func getUserName() {
        let defaults = UserDefaults.standard
        if defaults.object(forKey: "username") != nil {
            guard let name = defaults.object(forKey: "username") as? String else { return }
            self.userName = name
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
