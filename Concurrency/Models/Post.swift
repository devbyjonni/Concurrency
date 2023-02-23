//
//  Post.swift
//  Concurrency
//
//  Created by Jonni Akesson on 2023-02-23.
//

import Foundation

// Source: https://jsonplaceholder.typicode.com/posts
// Single User's Posts: https://jsonplaceholder.typicode.com/users/1/posts

struct Post: Identifiable, Codable {
    let id: UUID
}
