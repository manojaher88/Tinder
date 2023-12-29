//
//  MainView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ZStack {
            Color(.systemGray6)
                .opacity(0.35)
                .ignoresSafeArea(edges: .vertical)

            VStack {
                HStack {
                    TabBarButtonView(type: .fire) {
                        
                    }
                    TabBarButtonView(type: .star) {
                        
                    }
                    TabBarButtonView(type: .message) {
                        
                    }
                    TabBarButtonView(type: .profile) {
                        
                    }
                }
                .frame(height: 100)

                Spacer()
            }
        }
    }
}

#Preview {
    MainView()
}
