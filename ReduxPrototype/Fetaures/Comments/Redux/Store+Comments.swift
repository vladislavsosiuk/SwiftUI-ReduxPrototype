//
//  Store+Comments.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

extension Store {
    
    var commentsState: CommentsFlowState {
        state.homeState.commentsFlowState
    }
    
    func dispatch(commentsEvent: CommentsEvent) {
        self.dispatch(event: .home(event: .commentsFlow(event: commentsEvent)))
    }
}
