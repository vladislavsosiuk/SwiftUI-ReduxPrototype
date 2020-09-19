//
//  PostsView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct PostsView: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        switch store.postsState.posts {
        case .idle:
            Text("")
                .onAppear(perform: fetch)
        case .loading:
            ProgressView()
        case .loaded(let posts):
            List(posts, id: \.id) { post in
                PostView(post: post)
            }
        case .failed:
            VStack {
                Text("Loading failed")
                Button("Try again", action: fetch)
            }
        }
    }
    
    private func fetch() {
        store.dispatch(postsEvent: .loadPosts)
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
