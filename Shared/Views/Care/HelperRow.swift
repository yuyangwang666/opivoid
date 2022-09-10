//
//  HelperRow.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/10.
//

import SwiftUI

struct HelperRow: View {
    var helper: Helper
    var body: some View {
        HStack(alignment: .top){
            helper.avatar
                .resizable()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
            VStack(alignment: .leading){
                HStack{
                    Text(helper.name)
                        .font(.system(size: 18))
                        .foregroundColor(Color(red: 65/255, green: 99/255, blue: 235/255))
                    Text(helper.title)
                        .font(.system(size: 12))
                        .foregroundColor(Color.gray)
                }
                Text(helper.company)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                Text("Good at:"+helper.concentration)
                    .font(.system(size: 12))
                HStack{
                    Text("Patient Review:4.94")
                    Text("Answer Questions:100")
                    Text("Speed:4mins")
                }
                .font(.system(size: 10))
                HStack{
                    Text("10 Year of Experience")
                        .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                        .cornerRadius(10)
                    Text("Patient")
                        .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                        .cornerRadius(10)
                }
                .font(.system(size: 12))
                HStack{
                    Text("Picture + Voice")
                        .font(.system(size: 14))
                    Text(helper.feeRate)
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 65/255, green: 99/255, blue: 235/255))
                    Spacer()
                    HStack {
                        Text("Ask for help")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 109, height: 36)
                    .background((Color(red: 65/255, green: 99/255, blue: 235/255)))
                    .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct HelperRow_Previews: PreviewProvider {
    static var previews: some View {
        HelperRow(helper: helpers[0])
    }
}
