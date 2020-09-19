//
//  PostsState.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

struct PostsFlowState {
    
    enum PostsState {
        case idle
        case loading
        case loaded(posts: [Post])
        case failed
    }
    
    var posts: PostsState = .idle
}
