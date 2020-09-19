//
//  PostsEvent.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

enum PostsEvent {
    case loadPosts
    case postsLoaded(posts: [Post])
    case postsLoadFailed
}
