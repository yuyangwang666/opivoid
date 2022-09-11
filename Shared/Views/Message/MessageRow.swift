//
//  MessageRow.swift
//  opivoid (iOS)
//
//  Created by 刘则明 on 9/11/22.
//

import Foundation
import SwiftUI

struct MessageRow: View {
    var msg: Message
    var body: some View {
           
        HStack(alignment: .top){
            msg.avatar
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .frame(maxWidth: 50, alignment: .leading)

            VStack{
                HStack{
                    Text(msg.name)
                        .font(.system(size: 20))
                        .foregroundColor(Color.black)
                    Text(msg.date)
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                Text(msg.msg)
                    .font(.system(size: 15))
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                
            }.frame(maxHeight: 50, alignment: .leading)
            
            
        }
           
    }
}


struct MessageRow_Previews: PreviewProvider {
    static var previews: some View {
        MessageRow(msg: messages[0])
    }
}
