//
//  Store.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

final class Store: ObservableObject {
    
    @Published private(set) var state = AppState()
    
    private let reducer = AppReducer()
    
    func dispatch(event: AppEvent) {
        reducer.reduce(state: &state, event: event)
    }
}
