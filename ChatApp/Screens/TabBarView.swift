//
//  TabBarView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct TabBarView: View {
//    let mockChats: [Chat]
    var body: some View {
        TabView {
            Tab("Chats", systemImage: "message") {
                ChatsView(chats: MockData.chatList)
            }
            Tab("Profile", systemImage: "person.crop.circle.fill") {
                ProfileView()
            }
        }
    }
}

#Preview {
    TabBarView()
}
