//
//  IsPurchaseActionInProgressModifier.swift
//
//
//  Created by Ulaş Sancak on 24.07.2024.
//

import SwiftUI

struct IsPurchaseActionInProgressModifier: ViewModifier {
    let isEnabled: Bool

    func body(content: Content) -> some View {
        content
            .environment(\.isPurchaseActionInProgress, isEnabled)
            .disabled(isEnabled)
    }
}
extension View {
    func isPurchaseActionInProgress(_ isEnabled: Bool) -> some View {
        self.modifier(IsPurchaseActionInProgressModifier(isEnabled: isEnabled))
    }
}
