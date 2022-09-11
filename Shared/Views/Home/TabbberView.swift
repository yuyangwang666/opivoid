//
//  TabView.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/6.
//

import SwiftUI

struct TabberView: View {
    var body: some View {
        TabView{
            BlogList().tabItem { Image(systemName: "house") }
            HelperList().tabItem { Image(systemName: "heart")}
            Text("add").tabItem { Image(systemName: "plus.circle.fill") }
            MessageMain().tabItem { Image(systemName: "message") }
            Text("me").tabItem { Image(systemName: "person") }
        }
        .background(Color(red: 239/255, green: 239/255, blue: 239/255))
    }
}

struct TabberView_Previews: PreviewProvider {
    static var previews: some View {
        TabberView()
    }
}
