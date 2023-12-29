//
//  TabBarButtonView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

enum TabbarButtonType: String {
    case fire = "flame.fill"
    case star = "star.fill"
    case message = "message.fill"
    case profile = "person.fill"
}

struct TabBarButtonView: View {
    let type: TabbarButtonType
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            Image(systemName: type.rawValue)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .foregroundColor(.gray.opacity(0.5))
        }
    }
}

#Preview {
    TabBarButtonView(type: .fire) {
        print("Tapped")
    }
}
