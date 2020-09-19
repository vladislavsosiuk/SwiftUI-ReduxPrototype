//
//  URLDataTaskPublisher+Convenience.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

extension URLSession.DataTaskPublisher {
    func tryMap() -> AnyPublisher<Data, Error> {
        return self.tryMap { (element: (data: Data, response: URLResponse)) -> Data in
            guard let httpResponse = element.response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                throw URLError(.badServerResponse)
            }
            return element.data
        }
        .eraseToAnyPublisher()
    }
}
