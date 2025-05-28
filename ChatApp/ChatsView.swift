//
//  ChatsView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct ChatsView: View {
    let chats: [Chat]
    var body: some View {
        NavigationStack {
        
            List(chats) { chat in
                NavigationLink(value: chat) {
                    ChatsCellView(chat: chat)
                }
            }
            .navigationTitle("Chats")
            .listStyle(.plain)
        }
        
    }
}

#Preview {
    ChatsView(chats: MockData.chatList)
}
