//
//  HomeEvent.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

enum HomeEvent {
    case postsFlow(event: PostsEvent)
    case commentsFlow(event: CommentsEvent)
}
