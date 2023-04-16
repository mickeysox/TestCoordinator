//
//  ContentView.swift
//  TestCoordinator
//
//  Created by Development on 15/04/2023.
//

import SwiftUI

struct AppScreen: View {
    
    @ObservedObject var router = AppRouter()
    
    @ViewBuilder private func content() -> some View {
        VStack {
            Button {
                self.router.homeRoute()
            } label: {
                Text("Home Screen")
            }.buttonStyle(.borderedProminent)

        }
        .padding()
    }
    
    var body: some View {
        NavigationStack(path: self.$router.path) {
            content()
                .navigationDestination(for: AppRoutes.self) { screen in
                    router.route(to: screen)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppScreen()
    }
}
