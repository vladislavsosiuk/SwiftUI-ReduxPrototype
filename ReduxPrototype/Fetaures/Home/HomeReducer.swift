//
//  HomeReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class HomeReducer {
    
    private let postsReducer = PostsReducer()
    
    func reduce(state: inout HomeState, event: HomeEvent) -> AnyPublisher<HomeEvent, Never>? {
        switch event {
        case .postsFlow(let event):
            if let publisher = postsReducer.reduce(state: &state.postsFlowState, event: event) {
                return publisher
                    .map { HomeEvent.postsFlow(event: $0) }
                    .eraseToAnyPublisher()
            }
        }
        return nil
    }
}
