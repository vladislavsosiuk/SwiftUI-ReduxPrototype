//
//  NetworkClient.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

final class NetworkClient {
    
    private let urlSession = URLSession.shared
    
    func load(request: URLRequest) -> URLSession.DataTaskPublisher {
        urlSession.dataTaskPublisher(for: request)
    }
}
