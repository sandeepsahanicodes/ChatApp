//
//  ChattingView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct ChattingView: View {
    let chat: Chat
    let messages: [Message]
    
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        List(messages) { message in
            MessageBubbleView(message: message.message, messageSendTime: message.messageSendTime, messageType: message.messageType, isMessageReceived: message.isMessageReceived).listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarBackButtonHidden()
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                            Button {
                              dismiss()
                            } label: {
                                Image(systemName: "chevron.left")
                            }
                        }
            ToolbarItem(placement: .navigation) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                        Text(chat.userName)
                            .font(.callout)
                            .fontWeight(.semibold)
                        
                    }
                }
        }
    }
}

#Preview {
    ChattingView(chat: MockData.chatList[1], messages: MockMessageData.mockMessages)
}
