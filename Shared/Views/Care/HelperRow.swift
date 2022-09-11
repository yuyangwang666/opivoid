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
                    Text(helper.feeRate+"/h")
                        .font(.system(size: 14))
                        .foregroundColor(Color(red: 22/255, green: 182/255, blue: 182/255))
                }
                Text(helper.company)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                Text("Good at:"+helper.concentration)
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 33/255, green: 36/255, blue: 49/255))
                HStack{
                    Text("Patient Review:")
                    Text("4.94")
                        .foregroundColor(Color(red: 245/255, green: 128/255, blue: 73/255))
                    Text("Answer Questions:")
                    Text("100")
                        .foregroundColor(Color(red: 245/255, green: 128/255, blue: 73/255))
                    Text("Speed:")
                    Text("4mins")
                        .foregroundColor(Color(red: 245/255, green: 128/255, blue: 73/255))
                }
                .font(.system(size: 10))
                .foregroundColor(Color(red: 33/255, green: 36/255, blue: 49/255))
                HStack{
                    HStack{
                        Text("10 Year of Experience")
                            .font(.system(size: 10))
                            .padding(10)
                    }
                    .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                    .cornerRadius(10)
                    HStack{
                        Text("Patient")
                            .font(.system(size: 10))
                            .padding(10)
                    }
                        .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                        .cornerRadius(10)
                }
                .font(.system(size: 12))
                HStack{
                    HStack {
                        Text("Consult")
                            .font(.system(size: 14))
                            .foregroundColor(Color.white)
                    }
                    .frame(width: 109, height: 36)
                    .background((Color(red: 65/255, green: 99/255, blue: 235/255)))
                    .cornerRadius(10)
                    Spacer()
                    HStack{
                        Image("CalendarAvailability")
                            .resizable()
                            .frame(width: 22, height: 22)
                        Text("Check Availability")
                            .font(.system(size: 12))
                            .foregroundColor(Color(red: 132/255, green: 210/255, blue: 181/255))
                    }
                    .frame(width: 150, height: 36)
                    .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .stroke(Color(red: 132/255, green: 210/255, blue: 181/255), lineWidth: 1)
                        )
                    
                    
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
