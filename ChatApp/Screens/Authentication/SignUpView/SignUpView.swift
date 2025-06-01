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
    @EnvironmentObject var viewModel: AuthViewModel
    
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
                
                ZStack(alignment: .trailing) {
                    InputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Enter your password", isSecured: true)
                    
                    if !password.isEmpty && !confirmPassword.isEmpty {
                        if confirmPassword == password {
                            Image(systemName: "checkmark.circle.fill")
                                .imageScale(.medium)
                                .fontWeight(.bold)
                                .foregroundStyle(.green)
                        } else {
                            Image(systemName: "xmark.circle.fill")
                                .imageScale(.medium)
                                .fontWeight(.bold)
                                .foregroundStyle(.red)
                        }
                    }
                }
                
            }
            .padding(.horizontal)
            
            Button {
                print("Register the user")
                Task {
                    try await viewModel.createUser(fullName: fullName, withEmail: email, password: password)
                }
            } label: {
                RoundedButton(text: "Sign Up", backgroundColor: .blue)
            }
            .padding(.top, 30)
            .disabled(!formIsValid)
            .opacity(formIsValid ? 1.0 : 0.5)
            
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

// MARK: - AuthenticationFormProtocol
extension SignUpView: AuthenticationFormProtocol {
    var formIsValid: Bool {
        return !email.isEmpty
        && email.isValidEmail
        && !password.isEmpty
        && password.count > 5
        && confirmPassword == password
        && !fullName.isEmpty
    }
}
#Preview {
    SignUpView()
}
