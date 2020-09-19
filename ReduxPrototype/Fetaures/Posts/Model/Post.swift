//
//  Post.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import Foundation

struct Post: Decodable {
    var userID: Int
    var id: Int
    var title: String
    var body: String
}
