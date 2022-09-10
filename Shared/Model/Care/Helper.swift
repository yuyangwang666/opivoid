//
//  Helper.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/10.
//

import Foundation
import SwiftUI

struct Helper: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var title: String
    var company: String
    var concentration: String
    var detail: String
    var feeRate: String
    
    private var avatarName: String
    var avatar: Image {
        Image(avatarName)
    }
    
    private var badgeName: String
    var badge: Image{
        Image(badgeName)
    }
    
}
