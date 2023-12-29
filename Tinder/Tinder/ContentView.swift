//
//  ContentView.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var appStateManager = AppStateManager()
    var body: some View {
        VStack {
            MainView()
                .environmentObject(appStateManager)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
