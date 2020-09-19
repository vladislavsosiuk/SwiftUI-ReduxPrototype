//
//  AppReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

final class AppReducer {
    
    private let homeReducer = HomeReducer()
    
    func reduce(state: inout AppState, event: AppEvent) {
        switch event {
        case .home(let event):
            homeReducer.reduce(state: &state.homeState, event: event)
        }
    }
}
