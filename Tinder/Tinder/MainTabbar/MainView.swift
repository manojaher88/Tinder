//
//  MainView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appState: AppStateManager
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .ignoresSafeArea(edges: .vertical)

            VStack {
                HStack {
                    Spacer()
                    TabBarButtonView(type: .fire)
                    Spacer()
                    TabBarButtonView(type: .star)
                    Spacer()
                    TabBarButtonView(type: .message)
                    Spacer()
                    TabBarButtonView(type: .profile)
                    Spacer()
                }
                .frame(height: 100)
                .padding()
                viewForSelecedIndex()

                Spacer()
            }
            .ignoresSafeArea(edges: .vertical)
        }
    }

    @ViewBuilder
    func viewForSelecedIndex() -> some View {
        switch appState.selectedTab {
        case .fire:
            Color.red
        case .star:
            Color.yellow
        case .message:
            Color.blue
        case .profile:
            Text("Profile")
                .background(Color.green)
        }
    }
}

#Preview {
    MainView()
        .environmentObject(AppStateManager())
}
