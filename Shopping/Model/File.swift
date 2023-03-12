//
//  File.swift
//  Shopping
//
//  Created by Malik Em on 10.03.2023.
//

import Foundation

struct User: Identifiable, Codable {
    let id = UUID()
    let firstName: String
    let lastName: String
    let email: String
}

extension User {
    static func saveUsers(_ users: [User]) {
        let data = try? JSONEncoder().encode(users.self)
        UserDefaults.standard.set(data, forKey: "UsersData")
    }
    
    static func loadUsers() -> [User] {
        var returnValue: [User] = []
        
        if let data = UserDefaults.standard.data(forKey: "UsersData"),
           let users = try? JSONDecoder().decode([User].self, from: data) {
            returnValue = users
            print(returnValue)
        }
        return returnValue
    }
}
