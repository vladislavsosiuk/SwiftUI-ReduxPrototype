//
//  CommentsReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class CommentsReducer {
    // MARK: - Dependencies
    
    private let commentsService = CommentsService()
    
    // MARK: - Public
    
    func reduce(state: inout CommentsFlowState, event: CommentsEvent) -> AnyPublisher<CommentsEvent, Never>? {
        switch event {
        case .loadComments:
            state.comments = .loading
            return commentsService.fetchComments()
                .map { CommentsEvent.commentsLoaded(comments: $0) }
                .catch { (error) -> Just<CommentsEvent> in
                    return Just(.commentsLoadFailed)
                }
                .eraseToAnyPublisher()
        case .commentsLoaded(comments: let comments):
            state.comments = .loaded(comments: comments)
        case .commentsLoadFailed:
            state.comments = .failed
        }
        return nil
    }
}
