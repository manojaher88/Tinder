//
//  AppStateManager.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import Foundation

final class AppStateManager: ObservableObject {
    @Published var selectedTab: TabbarButtonType = .fire
}
