//
//  CommentsEvent.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

enum CommentsEvent {
    case loadComments
    case commentsLoaded(comments: [Comment])
    case commentsLoadFailed
}
