//
//  BlogList.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/6.
//

import SwiftUI

struct BlogList: View {
    @State var showPosition = Array(repeating: false, count: blogs.count)
    @State var showIn = Array(repeating: false, count: blogs.count)
    @State var positon = CGSize.zero
    var body: some View {

        ZStack {
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
                ScrollView{
                    ForEach(Array(zip(blogs.indices, blogs)), id: \.0){ index, blog in

                            VStack {
                                BlogRow(blog: blog)
                                    .onTapGesture {
                                        showPosition[index]=true
                                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                                showIn[index] = true
                                               }
                                    }
                                    
                            }
                            .padding(10)
                            .background(Color.white)
                            .cornerRadius(10)
                            
                        }
                    }
                    .padding(10)
                .background(Color(red: 239/255, green: 239/255, blue: 239/255))
            }
            ForEach(Array(zip(blogs.indices, blogs)), id: \.0){ index, blog in
                if showPosition[index]{
                    ZStack {
                        BlogDetail(blog: blog)
                            .offset(x: showIn[index] ? 0 : UIScreen.main.bounds.width)
                        HStack{
                            VStack{
                                Image(systemName: "chevron.left")
                                .foregroundColor(.secondary)
                                .onTapGesture {
                                showIn[index] = false
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                        showPosition[index] = false
                                   }
                                }
                                Spacer()
                            }
                            .padding(5)
                            Spacer()
                        }
                        .padding()
                    }
                    .offset(x: showIn[index] ? 0 : UIScreen.main.bounds.width)
                    .offset(x: positon.width)
                    .gesture(DragGesture().onChanged{value in
                        self.positon = value.translation
                    }
                    .onEnded{ value in
                        if value.translation.width > 0.3*UIScreen.main.bounds.width{
                            showIn[index] = false
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                showPosition[index] = false
                            }
                        }
                        self.positon = .zero
                    })
                }
            }
        }
        .animation(.easeInOut)

    }
}

struct BlogList_Previews: PreviewProvider {
    static var previews: some View {
        BlogList()
    }
}
