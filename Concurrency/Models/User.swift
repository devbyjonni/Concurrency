//
//  User.swift
//  Concurrency
//
//  Created by Jonni Akesson on 2023-02-23.
//

import Foundation

// Source: https://jsonplaceholder.typicode.com/users

struct User: Identifiable, Codable {
    let id: UUID
}
