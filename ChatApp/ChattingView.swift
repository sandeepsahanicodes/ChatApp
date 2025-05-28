//
//  ChattingView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct ChattingView: View {
    let messages: [Message]
    
    var body: some View {
        NavigationStack {
            List(messages) { message in
                MessageBubbleView(message: message.message, messageSendTime: message.messageSendTime, messageType: message.messageType, isMessageReceived: message.isMessageReceived)
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Hee")
            .listStyle(.plain)
        }
    }
}

#Preview {
    ChattingView(messages: MockMessageData.mockMessages)
}
