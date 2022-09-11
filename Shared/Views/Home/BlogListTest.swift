//
//  BlogListTest.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/10.
//

import SwiftUI

struct BlogListTest: View {
    var body: some View {
    
        VStack {
            HStack {
                Image(systemName: "line.3.horizontal")
                Spacer()
                Text("Following")
                Text("Discover")
                    .underline()
                Text("Nearby")
                Spacer()
                Image(systemName: "magnifyingglass")
            }
            .padding()
            NavigationView{
                ForEach(blogs){blog in
                    VStack{
                        NavigationLink{
                            BlogDetail(blog: blog)
                        } label:{
                            BlogRow(blog: blog)
                        }
                        
                    }
                }
            }
        }
        
    }
}

struct BlogListTest_Previews: PreviewProvider {
    static var previews: some View {
        BlogListTest()
    }
}
