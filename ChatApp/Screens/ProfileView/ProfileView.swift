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
                    UserAvatarRemoteImage(urlString: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9SRRmhH4X5N2e4QalcoxVbzYsD44C-sQv-w&s")
                        .frame(width: 120, height: 120)
                        .clipShape(.circle)
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
                        RoundedButton(text: "Logout", backgroundColor: .red)
                    }
                }
                .padding(.top, 30)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                NavigationLink {
                    EditProfileView()
                } label: {
                    Text("Edit")
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
