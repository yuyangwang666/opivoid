//
//  Message.swift
//  opivoid (iOS)
//
//  Created by 刘则明 on 9/11/22.
//

import Foundation
import SwiftUI

struct Message: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var msg: String
    var date: String
    
    private var avatarName: String
    var avatar: Image {
        Image(avatarName)
    }
    
    
}
