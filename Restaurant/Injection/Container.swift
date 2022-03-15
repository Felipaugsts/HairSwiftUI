//
//  Container.swift
//  Restaurant
//
//  Created by FELIPE AUGUSTO SILVA on 08/03/22.
//

import Foundation
import Swinject

class AppContainer {
    public static let shared: Container = {
        let container = Container()
        
        container.register(firebaseAPIProtocol.self) { _ in firebaseAPI()}
     
        container.register(AuthViewModel.self) { r in AuthViewModel(api: r.resolve(firebaseAPIProtocol.self)!)}
        
        return container
    }()
}
