//
//  CommentsState.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

struct CommentsFlowState {
    
    enum CommentsState {
        case idle
        case loading
        case loaded(comments: [Comment])
        case failed
    }
    
    var comments: CommentsState = .idle
}
