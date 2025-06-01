//
//  User.swift
//  ChatApp
//
//  Created by Sandeep Sahani on 29/05/25.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let emailId: String
}
