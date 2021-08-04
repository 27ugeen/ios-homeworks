//
//  Post.swift
//  Navigation
//
//  Created by GiN Eugene on 20.07.2021.
//

import Foundation
import UIKit

struct Post {
    var title: String
    let author: String
    let description: String? = nil
    let image: String
    let likes: Int
    let views: Int
}

struct PostSection {
    var title: String
    let posts: [Post]
    //    var footer: String? = nil
}

struct PostsStorage {
    
    static let tableModel = [
        PostSection(title: "Posts1 in table view", posts: [
            Post(title: "post1", author: "Ilon Mask", image: "Ilon", likes: 100, views: 309),
            Post(title: "post2", author: "Ilon Mask", image: "Ilon", likes: 200, views: 309),
            Post(title: "post3", author: "Ilon Mask", image: "Ilon", likes: 300, views: 309),
            Post(title: "post4", author: "Ilon Mask", image: "Ilon", likes: 400, views: 309)
        ]),
        PostSection(title: "Posts2 in table view", posts: [
            Post(title: "post1", author: "Ilon Mask", image: "Ilon", likes: 100, views: 309),
            Post(title: "post2", author: "Ilon Mask", image: "Ilon", likes: 200, views: 309),
            Post(title: "post3", author: "Ilon Mask", image: "Ilon", likes: 300, views: 309),
            Post(title: "post4", author: "Ilon Mask", image: "Ilon", likes: 400, views: 309)
        ]),
        PostSection(title: "Posts3 in table view", posts: [
            Post(title: "post1", author: "Ilon Mask", image: "Ilon", likes: 100, views: 309),
            Post(title: "post2", author: "Ilon Mask", image: "Ilon", likes: 200, views: 309),
            Post(title: "post3", author: "Ilon Mask", image: "Ilon", likes: 300, views: 309),
            Post(title: "post4", author: "Ilon Mask", image: "Ilon", likes: 400, views: 309)
        ])
    ]
}
