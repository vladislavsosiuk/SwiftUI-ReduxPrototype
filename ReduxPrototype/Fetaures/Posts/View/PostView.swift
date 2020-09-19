//
//  PostView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct PostView: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.title)
                .font(.headline)
            Text(post.body)
                .font(.body)
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        let post = Post(userId: 0,
                        id: 0,
                        title: "Text",
                        body: "Body")
        PostView(post: post)
    }
}
