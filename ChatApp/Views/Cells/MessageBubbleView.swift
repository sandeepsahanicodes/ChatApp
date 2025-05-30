//
//  MessageBubbleView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct MessageBubbleView: View {
    let message: String
    let messageSendTime: String
    let messageType: MessageType
    let isMessageReceived: Bool
    
    var isSender: Bool { messageType == .sender }
    var leadingPadding: CGFloat { isSender ? 50 : 5 }
    var trailingPadding: CGFloat { isSender ? 5 : 50 }

    var body: some View {
        HStack {
            if isSender { Spacer() }

            VStack(alignment: .trailing, spacing: 4) {
                Text(message)
                    .font(.body)
                    .padding(8)
                    .foregroundColor(.white)

                HStack(spacing: 4) {
                    Text(messageSendTime)
                        .foregroundColor(.white)
                    Image(systemName: "checkmark")
                        .foregroundColor(isMessageReceived ? .blue : .white)
                }
                .padding(5)
            }
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(isSender ? Color("messageBubbleBgSender") : Color("messageBubbleBgReceiver"))
            )

            if !isSender { Spacer() }
        }
        .padding(.leading, leadingPadding)
        .padding(.trailing, trailingPadding)
    }
}

#Preview {
    MessageBubbleView(message: "Hi there, are you visiting Swiggy HO tonight?", messageSendTime: "9:41 AM", messageType: .sender, isMessageReceived: false)
}
