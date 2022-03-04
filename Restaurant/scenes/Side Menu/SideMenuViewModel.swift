//
//  SideMenuViewModel.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 04/03/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case Favorites
    case Settings
    case Logout

    var title: String {
        switch self {
            
        case .profile:
            return "Profile"
        case .Favorites:
            return "Favorites"
        case .Settings:
            return "Settings"
        case .Logout:
            return "Logout"
        }
    }
    var imageName: String {
        switch self {
            
        case .profile:
            return "person"
        case .Favorites:
            return "heart"
        case .Settings:
            return "bell"
        case .Logout:
            return "arrow.left.square"
        }
    }
    
}
