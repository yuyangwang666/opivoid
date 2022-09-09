//
//  Blog.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/5.
//

import Foundation
import SwiftUI

struct Blog: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var title: String
    var brief: String
    var description: String
    var detail: String
    
    private var avatarName: String
    var avatar: Image {
        Image(avatarName)
    }
    
    private var badgeName: String
    var badge: Image{
        Image(badgeName)
    }
    
    
}

