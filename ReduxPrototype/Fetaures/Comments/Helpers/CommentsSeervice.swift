//
//  CommentsSeervice.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation
import Combine

final class CommentsService {
    
    private let networkClient = NetworkClient()
    
    func fetchComments() -> AnyPublisher<[Comment], Error> {
        let url = URL(string: "https://jsonplaceholder.typicode.com/comments")!
        let request = URLRequest(url: url)
        return networkClient.load(request: request)
            .tryMap()
            .decode(type: [Comment].self, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
