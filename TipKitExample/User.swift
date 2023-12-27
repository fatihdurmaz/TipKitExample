//
//  User.swift
//  TipKitExample
//
//  Created by Fatih Durmaz on 25.12.2023.
//
 
import SwiftUI

struct User: Identifiable, Comparable {
    
    var id: UUID
    var name: String
    var address: String
    var email: String
    
    static func < (lhs: User, rhs: User) -> Bool {
        return lhs.name < rhs.name
    }
}
