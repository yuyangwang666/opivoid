//
//  BlogList.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/6.
//

import SwiftUI

struct BlogList: View {
    var body: some View {

            ScrollView{
            ForEach(blogs){ blog in
                    VStack {
                        BlogRow(blog: blog)
                    }
                    .padding(10)
                    .background(Color.white)
                    
                    .cornerRadius(10)
                }
            }
            .padding(10)
            .background(Color(red: 239/255, green: 239/255, blue: 239/255))
    }
}

struct BlogList_Previews: PreviewProvider {
    static var previews: some View {
        BlogList()
    }
}
