//
//  RootEntryView.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 01/06/25.
//

import SwiftUI

struct RootEntryView: View {
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                TabBarView()
            } else {
                SignInView()
            }
        }
    }
}

#Preview {
    RootEntryView()
}
