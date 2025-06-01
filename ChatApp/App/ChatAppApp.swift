//
//  ChatAppApp.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 28/05/25.
//

import SwiftUI
import Firebase

@main
struct ChatAppApp: App {
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            RootEntryView()
                .environmentObject(viewModel)
        }
    }
}
