//
//  AppRouter.swift
//  TestCoordinator
//
//  Created by Development on 15/04/2023.
//

import Foundation
import SwiftUI

class AppFlowState: ObservableObject {
    @Published var path = NavigationPath()
}

class AppRouter: AppFlowState{

    @ObservedObject var state = AppFlowState()

    @ViewBuilder func route(to destination: AppRoutes) -> some View {
        switch destination {
        case .home:
            self.homeScreen()
        }
    }
    func homeRoute() {
        self.path.append(AppRoutes.home)
        print(path.count)
    }
    
    private func homeScreen() -> some View {
        let router = HomeRouter(path: path)
        let screen = HomeScreen(router: router)
        return screen
    }
}

