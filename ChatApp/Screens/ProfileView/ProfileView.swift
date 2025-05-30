//
//  ProfileView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 29/05/25.
//

import SwiftUI

struct ProfileView: View {
    
    //    let user: User
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .aspectRatio(contentMode: .fill)
                    Text("Sandeep Sahani")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("sandeepsahani76j@gmail.com")
                        .font(.body)
                        .tint(.gray)
                }
                
                Spacer()
                
                VStack {
                    Button {
                        print("Log out user!")
                    } label: {
                        RoundedButton(text: "Edit Profile", backgroundColor: .blue)
                    }
                    
                    Button {
                        print("Log out user!")
                    } label: {
                        RoundedButton(text: "Logout", backgroundColor: .red)
                    }
                }
                .padding(.top, 30)
                
            }.navigationTitle("Profile")
        }
    }
}

struct RoundedButton: View {
    let text: String
    let backgroundColor: Color
    var body: some View {
        Text(text)
            .fontWeight(.semibold)
            .frame(width: 250, height: 40)
            .background(backgroundColor)
            .foregroundStyle(.white)
            .clipShape(.buttonBorder)
    }
}

#Preview {
    ProfileView()
}
