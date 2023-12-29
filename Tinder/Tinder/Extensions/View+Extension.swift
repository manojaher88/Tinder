//
//  View+Extension.swift
//  Tinder
//
//  Created by Manoj Aher on 29/12/23.
//

import SwiftUI

extension View {
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
}
