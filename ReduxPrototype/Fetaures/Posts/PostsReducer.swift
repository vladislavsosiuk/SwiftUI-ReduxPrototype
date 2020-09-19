//
//  PostsReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class PostsReducer {
    
    // MARK: - Dependencies
    
    private let postsService = PostsService()
    
    // MARK: - Public
    
    func reduce(state: inout PostsFlowState, event: PostsEvent) -> AnyPublisher<PostsEvent, Never>? {
        switch event {
        case .loadPosts:
            state.posts = .loading
            return postsService.fetchPosts()
                .map { PostsEvent.postsLoaded(posts: $0) }
                .catch { (error) -> Just<PostsEvent> in
                    return Just(.postsLoadFailed)
                }
                .eraseToAnyPublisher()
        case .postsLoaded(posts: let posts):
            state.posts = .loaded(posts: posts)
        case .postsLoadFailed:
            state.posts = .failed
        }
        return nil
    }
}
