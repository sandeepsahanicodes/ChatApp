//
//  ProfileView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 29/05/25.
//

import SwiftUI

struct ProfileView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    UserAvatarRemoteImage(urlString: "")
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
                        viewModel.signOut()
                    } label: {
                        RoundedButton(text: "Sign Out", backgroundColor: .red)
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
