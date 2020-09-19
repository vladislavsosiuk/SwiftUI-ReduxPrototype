//
//  AppReducer.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class AppReducer {
    
    private let homeReducer = HomeReducer()
    
    func reduce(state: inout AppState, event: AppEvent) -> AnyPublisher<AppEvent, Never>? {
        switch event {
        case .home(let event):
            if let publisher = homeReducer.reduce(state: &state.homeState, event: event) {
                return publisher
                    .map { AppEvent.home(event: $0) }
                    .eraseToAnyPublisher()
            }
        }
        return nil
    }
}
