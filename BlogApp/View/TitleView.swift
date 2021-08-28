//
//  TitleView.swift
//  BlogApp
//
//  Created by Raphael Cerqueira on 28/08/21.
//

import SwiftUI

struct TitleView: View {
    var title: String
    
    var body: some View {
        ZStack {
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "line.horizontal.3")
                })
                
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "magnifyingglass")
                })
            }
            .font(.system(size: 21))
            
            Text(title)
                .font(.system(size: 28, weight: .semibold, design: .serif))
        }
        .foregroundColor(Color.primary)
        .padding()
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Preview")
    }
}
