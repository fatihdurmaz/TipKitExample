//
//  UserViewModel.swift
//  TipKitExample
//
//  Created by Fatih Durmaz on 25.12.2023.
//

import SwiftUI
import Observation

@Observable class UserViewModel {
     var users: [User]

    init() {
        self.users = [
            User(id: UUID(), name: "John Doe", address: "123 Main St", email: "john@example.com"),
            User(id: UUID(), name: "Jane Smith", address: "456 Oak Ave", email: "jane@example.com"),
            User(id: UUID(), name: "Bob Johnson", address: "789 Pine Blvd", email: "bob@example.com"),
            User(id: UUID(), name: "Alice Williams", address: "101 Elm Ln", email: "alice@example.com"),
            User(id: UUID(), name: "Charlie Brown", address: "202 Cedar Dr", email: "charlie@example.com"),
            User(id: UUID(), name: "Eva Davis", address: "303 Birch Rd", email: "eva@example.com"),
            User(id: UUID(), name: "Frank Wilson", address: "404 Maple Ct", email: "frank@example.com"),
            User(id: UUID(), name: "Grace Miller", address: "505 Spruce Ave", email: "grace@example.com"),
            User(id: UUID(), name: "Henry Taylor", address: "606 Sycamore Pl", email: "henry@example.com"),
            User(id: UUID(), name: "Ivy White", address: "707 Willow Ln", email: "ivy@example.com"),
            User(id: UUID(), name: "Jack Brown", address: "808 Oak St", email: "jack@example.com"),
            User(id: UUID(), name: "Kelly Davis", address: "909 Pine Ave", email: "kelly@example.com"),
            User(id: UUID(), name: "Liam Johnson", address: "1010 Elm Blvd", email: "liam@example.com"),
            User(id: UUID(), name: "Mia White", address: "1111 Cedar Ln", email: "mia@example.com"),
            User(id: UUID(), name: "Noah Williams", address: "1212 Birch Dr", email: "noah@example.com"),
            User(id: UUID(), name: "Olivia Smith", address: "1313 Maple Rd", email: "olivia@example.com"),
            User(id: UUID(), name: "Peter Miller", address: "1414 Spruce Ct", email: "peter@example.com"),
            User(id: UUID(), name: "Quinn Taylor", address: "1515 Sycamore Ave", email: "quinn@example.com"),
            User(id: UUID(), name: "Rachel Wilson", address: "1616 Willow Pl", email: "rachel@example.com"),
            User(id: UUID(), name: "Samuel Doe", address: "1717 Oak Ln", email: "samuel@example.com")
        ]
        users.sort()
    }
    
    func sortUsers(ascending: Bool) {
        users.sort { user1, user2 in
            if ascending {
                return user1.name < user2.name
            } else {
                return user1.name > user2.name
            }
        }
    }
}
