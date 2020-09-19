//
//  Store+Posts.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

extension Store {
    
    var postsState: PostsFlowState {
        state.homeState.postsFlowState
    }
    
    func dispatch(postsEvent: PostsEvent) {
        self.dispatch(event: .home(event: .postsFlow(event: postsEvent)))
    }
}
