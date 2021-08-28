//
//  HomeView.swift
//  BlogApp
//
//  Created by Raphael Cerqueira on 28/08/21.
//

import SwiftUI
import HideableTopView

struct HomeView: View {
    var body: some View {
        HideableTopView {
            TitleView(title: "Discover")
        } content: {
            PostsListView()
        }
    }
}

struct PostsListView: View {
    var body: some View {
        VStack(spacing: 15) {
            ForEach(posts) { post in
                RowView(post: post)
            }
        }
        .padding(.vertical)
        .background(Color("background"))
        .padding(.bottom, 40)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
