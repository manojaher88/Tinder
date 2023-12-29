//
//  MainView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

struct MainView: View {
    @State var selectedTab: String = "fire"
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

                Spacer()
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(AppStateManager())
}
