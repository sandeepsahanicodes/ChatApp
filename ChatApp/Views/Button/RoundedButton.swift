//
//  RoundedButton.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 31/05/25.
//

import SwiftUI

struct RoundedButton: View {
    let text: String
    let backgroundColor: Color
    var body: some View {
        Text(text)
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .fontWeight(.semibold)
            .background(backgroundColor)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
            .padding(.horizontal, 16)
    }
}

#Preview {
    RoundedButton(text: "Tap me", backgroundColor: .blue)
}
