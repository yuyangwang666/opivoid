//
//  BlogDetail.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/7.
//

import SwiftUI

struct BlogDetail: View {
    var blog: Blog
    var body: some View {
        VStack {
            HStack{
                
                blog.avatar
                    .resizable()
                    .frame(width: 29, height: 29)
                    .clipShape(Circle())
                Text(blog.name)
            }
            ScrollView{
                VStack {
                    Text(blog.title)
                        .font(.headline)
                    Text(blog.detail)
                }
                .padding()
                .frame(width: 350)
                .background(Color.white)
                .cornerRadius(10)
                VStack{
                    HStack {
                        Text("Comments")
                        Spacer()
                        Image(systemName: "arrow.up.to.line.compact")
                    }
                    Divider()
                    HStack(alignment: .top){
                        blog.avatar
                            .resizable()
                            .frame(width: 29, height: 29)
                            .clipShape(Circle())
                        VStack(alignment: .leading){
                            Text("Jhon Cardini")
                                .font(.subheadline)
                                .foregroundColor(Color.gray)
                            Spacer()
                            Text("Some comments about the blog asdasdasd asdasdasd asdasd")
                        }
                    }
                }
                .padding()
                .frame(width: .infinity)
                .background(Color.white)
                .cornerRadius(10)
            }
        }
        .padding(10)
        .frame(width: .infinity, height: .infinity)
        .background(Color(red: 239/255, green: 239/255, blue: 239/255))
        
    }
        
}

struct BlogDetail_Previews: PreviewProvider {
    static var previews: some View {
        BlogDetail(blog: blogs[0])
    }
}
