//
//  CategoriesView.swift
//  BlogApp
//
//  Created by Raphael Cerqueira on 28/08/21.
//

import SwiftUI
import TapToCenterTabBar
import HideableTopView

struct CategoriesView: View {
    @State var selectedIndex = 0
    
    let items = [
        TabItem(title: "For You"),
        TabItem(title: "Design"),
        TabItem(title: "Beauty"),
        TabItem(title: "Education"),
        TabItem(title: "Entertainment")
    ]
    
    var body: some View {
        HideableTopView {
            TitleView(title: "Categories")
        } content: {
            VStack(spacing: 0) {
                // tab bar
                TapToCenterTabBar(selectedIndex: $selectedIndex, items: items, selectedColor: Color("pink"), unselectedColor: Color.primary)
                
                // posts
                PostsListView()
            }
        }
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
