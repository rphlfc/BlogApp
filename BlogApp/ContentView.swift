//
//  ContentView.swift
//  BlogApp
//
//  Created by Raphael Cerqueira on 26/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var selectedIndex = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selectedIndex) {
                HomeView()
                    .tag(0)
                
                CategoriesView()
                    .tag(1)
                
                Text("Favorites")
                    .tag(2)
                
                Text("People")
                    .tag(3)
                
                Text("Settings")
                    .tag(4)
            }
            
            // bottom menu bar
            HStack {
                ForEach(0..<menuItems.count) { i in
                    Button(action: {
                        selectedIndex = i
                    }, label: {
                        Image(systemName: menuItems[i])
                            .foregroundColor(selectedIndex == i ? Color.pink : Color.gray)
                    })
                    
                    if menuItems.last != menuItems[i] {
                        Spacer()
                    }
                }
            }
            .font(.system(size: 21))
            .frame(maxWidth: .infinity)
            .padding(.horizontal)
            .frame(height: 60)
            .background(Color.white.ignoresSafeArea(.all, edges: .bottom))
        }
    }
}

let menuItems = ["house", "folder", "heart", "person", "gearshape"]

struct RowView: View {
    var post: Post
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.white
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.pink.opacity(0.3))
            
            HStack(spacing: 15) {
                Image(post.image)
                    .resizable()
                    .frame(width: 120, height: 140)
                    .background(Rectangle().stroke(Color.white, lineWidth: 15))
                
                VStack(alignment: .leading) {
                    Text(post.title)
                        .font(.system(size: 19, weight: .medium, design: .serif))
                    
                    Spacer(minLength: 0)
                    
                    HStack {
                        Image(post.author.image)
                            .resizable()
                            .frame(width: 30, height: 30)
                        
                        Text(post.author.name)
                            .font(.system(size: 13, design: .serif))
                            .lineLimit(1)
                        
                        Spacer(minLength: 0)
                        
                        Text("• \(post.time)")
                            .font(.system(size: 11, design: .serif))
                            .foregroundColor(Color.gray)
                    }
                }
            }
            .padding(20)
        }
        .frame(height: 180)
        .padding(.horizontal)
    }
}

struct ContentView__Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
