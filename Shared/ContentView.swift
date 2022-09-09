//
//  ContentView.swift
//  Shared
//
//  Created by 王禹旸 on 2022/9/5.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            TabberView()
        }
        .background(Color(red: 239/255, green: 239/255, blue: 239/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
