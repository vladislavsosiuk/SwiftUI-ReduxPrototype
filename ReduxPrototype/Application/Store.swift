//
//  Store.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class Store: ObservableObject {
    
    @Published private(set) var state = AppState()
    
    private let reducer = AppReducer()
    
    private var cancellables = Set<AnyCancellable>()
    
    func dispatch(event: AppEvent) {
        guard let publisher = reducer.reduce(state: &state, event: event) else {
            return
        }
        
        publisher
            .receive(on: DispatchQueue.main)
            .sink(receiveValue: dispatch(event:))
            .store(in: &cancellables)
    }
}
