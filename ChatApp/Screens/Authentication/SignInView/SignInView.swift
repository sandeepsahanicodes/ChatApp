//
//  SignInView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 31/05/25.
//

import SwiftUI

struct SignInView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                VStack {
                    Image(systemName: "message.circle.fill")
                        .resizable()
                        .frame(width: 120, height: 120)
                    Text("ChatApp")
                        .font(.title)
                        .fontWeight(.semibold)
                }
                .padding(.bottom, 30)
                
                VStack(spacing: 20) {
                    InputView(text: $email, title: "Email Address", placeholder: "Enter your email")
                        .textInputAutocapitalization(.never)
                    
                    InputView(text: $password, title: "Password", placeholder: "Enter your password")
                }
                .padding(.horizontal)
               
            }
            .padding(.top, 50)
            
            Button {
                print("Login user")
            } label: {
                RoundedButton(text: "Sign In", backgroundColor: .blue)
            }.padding(.top, 30)
            
            Spacer()
            
            NavigationLink {
                SignUpView()
                    .navigationBarBackButtonHidden()
            } label: {
                HStack {
                    Text("Don't have an account?")
                    Text("Sign up")
                        .fontWeight(.semibold)
                }
            }
        }
    }
}

#Preview {
    SignInView()
}
