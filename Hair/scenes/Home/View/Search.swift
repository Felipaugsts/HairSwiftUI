//
//  Search.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import SwiftUI

struct SearchBarItems: View {
    @State var searchText = ""
    var body: some View {
        NavigationView {
        ZStack {
            Text("test")
        }.searchable(text: $searchText)
            .navigationTitle("Search items")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarItems()
    }
}

