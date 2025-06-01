//
//  ChatsCellView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI

struct ChatsCellView: View {
    let chat: Chat
    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            
            UserAvatarRemoteImage(urlString: chat.userAvatarUrl)
                .frame(width: 60, height: 60)
                .clipShape(.circle)
                .padding(.leading)
            
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Text(chat.userName)
                        .font(.title3)
                        .fontWeight(.semibold)
                    Spacer()
                    Text(chat.messageSentTime)
                }
                
                HStack(alignment: .top) {
                    Text(chat.latestMessage)
                        .font(.callout)
                    Spacer()
                    if chat.messageCount >= 1 {
                        Text("\(chat.messageCount)")
                            .frame(width: 23, height: 23)
                            .background(.blue)
                            .clipShape(.circle)
                            .foregroundStyle(.white)
                    }
                    
                }
                
            }
            Spacer()
        }
        .frame(height: 70)
    }
}

#Preview {
    ChatsCellView(chat: MockData.chatList[0])
}
