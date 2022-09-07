//
//  TabView.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/6.
//

import SwiftUI

struct TabberView: View {
    var body: some View {
        TabView(selection: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Selection@*/.constant(1)/*@END_MENU_TOKEN@*/) {
            BlogList().tabItem { Image(systemName: "house") }.tag(1)
            Text("care").tabItem { Image(systemName: "heart")}.tag(2)
            Text("add").tabItem { Image(systemName: "plus.circle.fill") }.tag(3)
            Text("message").tabItem { Image(systemName: "message") }.tag(4)
            Text("me").tabItem { Image(systemName: "person") }.tag(5)
        }
        .background(Color(red: 239/255, green: 239/255, blue: 239/255))
    }
}

struct TabberView_Previews: PreviewProvider {
    static var previews: some View {
        TabberView()
    }
}
