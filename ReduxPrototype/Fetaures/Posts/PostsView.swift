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
                .onAppear {
                    store.dispatch(postsEvent: .loadPosts)
                }
        case .loading:
            ProgressView()
        case .loaded(let posts):
            Text("LOADED!!!!!!\n\(posts.first?.body ?? "empty")")
        case .failed:
            Text("FAILED!!!!!!")
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
