//
//  Chat.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import Foundation

struct Chat: Identifiable, Hashable {
    let id: Int
    let userAvatarUrl: String
    let messageSentTime: String
    let userName: String
    let latestMessage: String
    let messageCount: Int
}

struct Chats: Identifiable, Hashable {
    var id: Int
    
    let chats: [Chat]
}

struct MockData {
    static let chats = Chats(id: 1, chats: chatList)
    static let chatList: [Chat] = [
            Chat(id: 1, userAvatarUrl: "https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg", messageSentTime: "10:24 AM", userName: "Alice", latestMessage: "Hey, are we still on for lunch?", messageCount: 2),
            Chat(id: 2, userAvatarUrl: "https://example.com/avatar2.png", messageSentTime: "9:15 AM", userName: "Bob", latestMessage: "I'll send the files soon.", messageCount: 0),
            Chat(id: 3, userAvatarUrl: "https://example.com/avatar3.png", messageSentTime: "Yesterday", userName: "Charlie", latestMessage: "Nice work on the project!", messageCount: 5),
            Chat(id: 4, userAvatarUrl: "https://example.com/avatar4.png", messageSentTime: "8:00 AM", userName: "Diana", latestMessage: "See you at the gym.", messageCount: 1),
            Chat(id: 5, userAvatarUrl: "https://example.com/avatar5.png", messageSentTime: "2 days ago", userName: "Ethan", latestMessage: "Let me know when you're free.", messageCount: 3),
            Chat(id: 6, userAvatarUrl: "https://example.com/avatar6.png", messageSentTime: "5 mins ago", userName: "Fiona", latestMessage: "Can you review my code?", messageCount: 4),
            Chat(id: 7, userAvatarUrl: "https://example.com/avatar7.png", messageSentTime: "Just now", userName: "George", latestMessage: "Thanks!", messageCount: 1),
            Chat(id: 8, userAvatarUrl: "https://example.com/avatar8.png", messageSentTime: "11:45 PM", userName: "Hannah", latestMessage: "Good night 😴", messageCount: 0),
            Chat(id: 9, userAvatarUrl: "https://example.com/avatar9.png", messageSentTime: "3 hours ago", userName: "Ian", latestMessage: "That makes sense.", messageCount: 2),
            Chat(id: 10, userAvatarUrl: "https://example.com/avatar10.png", messageSentTime: "1 hour ago", userName: "Julia", latestMessage: "I'll call you later.", messageCount: 6)
        ]
}
