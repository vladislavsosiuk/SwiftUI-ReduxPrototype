//
//  PostsReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

final class PostsReducer {
    func reduce(state: inout PostsFlowState, event: PostsEvent) {
        switch event {
        case .loadPosts:
            state.posts = .loading
            #warning("load posts")
        }
    }
}
