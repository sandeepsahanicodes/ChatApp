//
//  Message.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import Foundation

struct Message: Identifiable, Hashable {
    let id: Int
    let message: String
    let messageSendTime: String
    let messageType: MessageType
    let isMessageReceived: Bool
}

struct MockMessageData {
    static let mockMessages: [Message] = [
        Message(id: 1, message: "Hey, how are you?", messageSendTime: "1:15 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 2, message: "I'm good! How about you?", messageSendTime: "1:16 AM", messageType: .sender, isMessageReceived: true),
        Message(id: 3, message: "Doing great, thanks!", messageSendTime: "1:17 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 4, message: "What are you up to?", messageSendTime: "1:18 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 5, message: "Just working on a SwiftUI project.", messageSendTime: "1:19 AM", messageType: .sender, isMessageReceived: true),
        Message(id: 6, message: "Nice! Learning anything new?", messageSendTime: "1:20 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 7, message: "Yeah, playing with navigation and lists.", messageSendTime: "1:21 AM", messageType: .sender, isMessageReceived: true),
        Message(id: 8, message: "Awesome! SwiftUI is cool.", messageSendTime: "1:22 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 9, message: "Totally agree 🔥", messageSendTime: "1:23 AM", messageType: .sender, isMessageReceived: true),
        Message(id: 10, message: "Have you tried animations?", messageSendTime: "1:24 AM", messageType: .receiver, isMessageReceived: true),
        Message(id: 11, message: "A bit, trying matchedGeometryEffect now.", messageSendTime: "1:25 AM", messageType: .sender, isMessageReceived: false),
        Message(id: 12, message: "Let me know how it goes!", messageSendTime: "1:26 AM", messageType: .receiver, isMessageReceived: false),
        Message(id: 13, message: "Sure! You should try it too.", messageSendTime: "1:27 AM", messageType: .sender, isMessageReceived: false),
        Message(id: 14, message: "Definitely will.", messageSendTime: "1:28 AM", messageType: .receiver, isMessageReceived: false),
        Message(id: 15, message: "Okay, talk later 👋", messageSendTime: "1:29 AM", messageType: .sender, isMessageReceived: false)
    ]
}
