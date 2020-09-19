//
//  CommentsView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct CommentsView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        switch store.commentsState.comments {
        case .idle:
            Text("")
                .onAppear(perform: fetch)
        case .loading:
            ProgressView()
        case .loaded(let comments):
            List(comments, id: \.id) { comment in
                CommentView(comment: comment)
            }
        case .failed:
            VStack {
                Text("Loading failed")
                Button("Try again", action: fetch)
            }
        }
    }
    
    private func fetch() {
        store.dispatch(commentsEvent: .loadComments)
    }
}

struct CommentsView_Previews: PreviewProvider {
    static var previews: some View {
        CommentsView()
    }
}
