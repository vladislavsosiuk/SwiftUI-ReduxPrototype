//
//  HomeView.swift
//  ReduxPrototype
//
//  Created by Vladislav Sosiuk on 19.09.2020.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            PostsView()
                .tabItem {
                    Image(systemName: "doc.text")
                    Text("Posts")
                }
            CommentsView()
                .tabItem {
                    Image(systemName: "text.bubble")
                    Text("Comments")
                }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
