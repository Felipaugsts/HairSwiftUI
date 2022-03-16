//
//  UnderLineSecurityField.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 15/03/22.
//

import SwiftUI

struct UnderLineSecurityField: View {
    @Binding var field: String
    var fieldText: String
    var body: some View {
        VStack {
        SecureField(fieldText, text: $field)
            .padding(.leading, 16)
            .padding(.trailing, 16)
        Rectangle()
                .frame(height: 0.5)
             .foregroundColor(.black)
             .padding(.leading, 16)
             .padding(.trailing, 16)
        }
    }
}
