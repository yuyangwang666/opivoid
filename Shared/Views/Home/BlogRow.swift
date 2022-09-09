//
//  BlogRow.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/5.
//

import SwiftUI

struct BlogRow: View {
    var blog: Blog
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                blog.avatar
                .resizable()
                .frame(width: 29, height: 29)
                .clipShape(Circle())
                Text(blog.name)
                    .fontWeight(.regular)
                Spacer()
            }
            Text(blog.title)
                .font(.headline)
            Text(blog.brief)
                .font(.subheadline)
            Spacer()
                .frame(width: 200, height: 30)
            Text(blog.description)
        }
        .padding()
    }
}

struct BlogRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            BlogRow(blog: blogs[0])
                
            BlogRow(blog: blogs[1])
        }.previewLayout(.sizeThatFits)
        
    }
}
