//
//  SignUpView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 31/05/25.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullName: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            VStack {
                Image(systemName: "message.circle.fill")
                    .resizable()
                    .frame(width: 120, height: 120)
                Text("ChatApp")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .padding(.top, 50)
            .padding(.bottom, 30)
            
            VStack(spacing: 20) {
                InputView(text: $fullName, title: "Full Name", placeholder: "Enter your name")
                    .textInputAutocapitalization(.words)
                
                InputView(text: $email, title: "Email Address", placeholder: "Enter your email")
                    .textInputAutocapitalization(.never)
                
                InputView(text: $password, title: "Password", placeholder: "Enter your password", isSecured: true)
                
                InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Enter your password", isSecured: true)
            }
            .padding(.horizontal)
            
            Button {
                print("Register the user")
            } label: {
                RoundedButton(text: "Sign Up", backgroundColor: .blue)
            }.padding(.top, 30)
            
            Spacer()
            
            Button {
                dismiss()
            } label: {
                HStack {
                    Text("Already have an account?")
                    Text("Sign In")
                        .fontWeight(.semibold)
                }
            }
            
        }
        
    }
}

#Preview {
    SignUpView()
}
