//
//  HomeReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

final class HomeReducer {
    
    private let postsReducer = PostsReducer()
    
    func reduce(state: inout HomeState, event: HomeEvent) {
        switch event {
        case .postsFlow(let event):
            postsReducer.reduce(state: &state.postsFlowState, event: event)
        }
    }
}
