//
//  TabBarButtonView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

enum TabbarButtonType: String, CaseIterable {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

struct TabBarButtonView: View {
    @EnvironmentObject var appState: AppStateManager
    let type: TabbarButtonType

    var body: some View {
        Button {
            appState.selectedTab = type
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .if(appState.selectedTab == type, transform: {
                    $0.foregroundStyle(type == .star ? .yellow: .red)
                })
                .foregroundColor(.gray.opacity(0.5))
        }
        .frame(height: 32)
    }
}

#Preview {
    TabBarButtonView(type: .fire)
        .environmentObject(AppStateManager())
}
