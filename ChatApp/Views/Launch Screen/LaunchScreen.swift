//
//  LaunchScreen.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 31/05/25.
//

import SwiftUI

struct LaunchScreen: View {
    var body: some View {
        VStack {
            Image(systemName: "message.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
            Text("ChatApp")
                .font(.title)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    LaunchScreen()
}
