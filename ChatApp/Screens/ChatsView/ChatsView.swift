//
//  ChatsView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct ChatsView: View {
    let chats: [Chat]
    @State private var searchText: String = ""
    
    var searchTextPlaceholder: String {
        
        if chats.isEmpty {
            return "Find peoples!"
        } else {
            return "Search"
        }
    }
    var body: some View {
        NavigationStack {
            if chats.isEmpty {
                NoChatsView()
                    .navigationTitle("Chats")
            } else {
                List(chats) { chat in
                    NavigationLink(value: chat) {
                        ChatsCellView(chat: chat)
                    }
                }
                .navigationTitle("Chats")
                .navigationDestination(for: Chat.self, destination: { chat in
                    ChattingView(chat: chat, messages: MockMessageData.mockMessages)
                        .toolbarVisibility(.hidden, for: .tabBar)
                    })
                .listStyle(.plain)
            }
        }
        .searchable(text: $searchText, prompt: searchTextPlaceholder)
    }
}

#Preview {
     ChatsView(chats: MockData.chatList)
//     ChatsView(chats: [])
}
