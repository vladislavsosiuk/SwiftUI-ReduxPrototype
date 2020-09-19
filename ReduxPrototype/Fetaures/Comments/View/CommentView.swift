//
//  CommentView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct CommentView: View {
    
    let comment: Comment
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(comment.name)
                .font(.headline)
            Text(comment.email)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Spacer()
                .frame(height: 15)
            Text(comment.body)
                .font(.body)
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        let comment = Comment(postId: 0,
                              id: 0,
                              name: "name",
                              email: "email@apple.com",
                              body: "body")
        CommentView(comment: comment)
    }
}
