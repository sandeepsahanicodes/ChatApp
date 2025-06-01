//
//  EditProfileView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 01/06/25.
//

import SwiftUI
import PhotosUI

struct EditProfileView: View {
    @State private var fullName: String = ""
    @State private var emailAddress: String = ""
    @State private var selectedPhoto: PhotosPickerItem?
    @State private var userAvatar: Image? = nil
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView {
            VStack {
                
                if (userAvatar == nil) {
                     Image(systemName: "person.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                } else {
                    userAvatar?
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(.circle)
                }
                
                PhotosPicker(selection: $selectedPhoto, matching: .images, preferredItemEncoding: .automatic) {
                    Text("Edit photo")
                        .fontWeight(.semibold)
                }
            }
            .onChange(of: selectedPhoto) {
                Task {
                    if let selectedImage = try? await selectedPhoto?.loadTransferable(type: Image.self) {
                        self.userAvatar = selectedImage
                    } else {
                        print("failed to load image!")
                    }
                }
            }
            VStack(spacing: 20) {
                InputView(text: $fullName, title: "Full Name", placeholder: "")
                InputView(text: $emailAddress, title: "Email Address", placeholder: "")
            }
            .padding(.horizontal)
            Spacer()
            
            Button {
                print("Save information")
                dismiss()
            } label: {
                RoundedButton(text: "Save", backgroundColor: .blue)
            }
            
            .padding(.top, 30)
            
        }.navigationTitle("Edit Profile")
    }
}

#Preview {
    EditProfileView()
}
