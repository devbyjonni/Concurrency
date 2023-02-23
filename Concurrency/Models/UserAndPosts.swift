//
//  UserAndPosts.swift
//  Concurrency
//
//  Created by Jonni Akesson on 2023-02-23.
//

import Foundation

struct UserAndPosts: Identifiable {
    var id = UUID()
    let user: User
    let posts: [Post]
    var numberOfPosts: Int {
        posts.count
    }
}
