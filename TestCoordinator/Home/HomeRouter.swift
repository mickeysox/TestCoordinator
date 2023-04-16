//
//  HomeRouter.swift
//  TestCoordinator
//
//  Created by Development on 15/04/2023.
//

import Foundation
import SwiftUI

class HomeRouter: ObservableObject {
    
    @Published var path: NavigationPath
    
    init(path: NavigationPath) {
        self.path = path
    }
    
    @ViewBuilder func router(to destination: HomeRoutes) -> some View {
        switch destination {
        case .login:
            self.loginScreen()
        }
    }
    
    func loginRoute() {
        path.append(HomeRoutes.login)
    }
    
    private func loginScreen() -> some View {
        LoginScreen()
    }
    
}
