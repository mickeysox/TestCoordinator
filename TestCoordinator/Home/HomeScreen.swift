//
//  HomeView.swift
//  TestCoordinator
//
//  Created by Development on 15/04/2023.
//

import SwiftUI

struct HomeScreen: View {
    @State var router: HomeRouter
    
    
    @ViewBuilder private func content() -> some View {
        VStack {
            Button {
                self.router.loginRoute()
            } label: {
                Text("Login Screen")
            }.buttonStyle(.borderedProminent)

        }
    }
    
    var body: some View {
            content()
                .navigationDestination(for: HomeRoutes.self) { screen in
                    router.router(to: screen)
                }
    }

}
/*
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(router: router)
    }
}*/
