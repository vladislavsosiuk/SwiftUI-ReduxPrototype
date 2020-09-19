//
//  Comment.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

struct Comment: Decodable {
    var postId: Int
    var id: Int
    var name: String
    var email: String
    var body: String
}
