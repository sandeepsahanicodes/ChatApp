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
            .navigationDestination(for: Chat.self, destination: { chat in
                ChattingView(chat: chat, messages: MockMessageData.mockMessages)
                })
            .listStyle(.plain)
        }
    }
}

#Preview {
    ChatsView(chats: MockData.chatList)
}
