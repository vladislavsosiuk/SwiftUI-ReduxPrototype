//
//  PostsView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct PostsView: View {
    
    @EnvironmentObject var store: Store
    
    private var text: String {
        switch store.postsState.posts {
        case .idle:
            return "IDLE"
        case .loading:
            return "LOADING"
        default:
            return "HZ"
        }
    }
    
    var body: some View {
        switch store.postsState.posts {
        case .idle:
            Text("")
                .onAppear {
                    store.dispatch(postsEvent: .loadPosts)
                }
        case .loading:
            ProgressView()
        default:
            Text("unexpected")
        }
    }
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
