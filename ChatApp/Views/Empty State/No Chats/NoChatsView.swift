//
//  NoChatsView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 17/06/25.
//

import SwiftUI

struct NoChatsView: View {
    var body: some View {
        VStack {
            Image(systemName: "message.fill")
                .resizable()
                .frame(width: 80, height: 80)
                .aspectRatio(contentMode: .fill)
            Text("No Conversion yet!")
                .font(.title2)
                .fontWeight(.bold)
            Text("Start a conversion")
                .font(.footnote)
                .fontWeight(.medium)
                .tint(.gray)
        }
    }
}

#Preview {
    NoChatsView()
}
