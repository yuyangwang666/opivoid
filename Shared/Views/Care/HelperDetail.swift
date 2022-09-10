//
//  HelperDetail.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/10.
//

import SwiftUI

struct HelperDetail: View {
    var helper: Helper
    var body: some View {
        VStack(alignment: .leading){
            HStack{}.frame(width: .infinity, height: 30)
            HStack{
                VStack(alignment: .leading){
                    Text(helper.name)
                        .font(.system(size: 26))
                    Text(helper.title)
                        .font(.system(size: 14))
                    Text(helper.company)
                        .font(.system(size: 12))
                }
                Spacer()
                helper.avatar
                    .resizable()
                    .frame(width: 70, height: 70)
                    .clipShape(Circle())
            }
            HStack{
                VStack(alignment: .leading){
                    Text("Good at:"+helper.concentration)
                        .font(.system(size: 12))
                    HStack{
                        Text("10 Year of Experience")
                            .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                            .cornerRadius(10)
                        Text("Patient")
                            .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                            .cornerRadius(10)
                    }
                }
                .frame(width: 270, height: 50)
                HStack{
                    Text("+Follow")
                }
                .frame(width: 66, height: 28)
                .background(Color(red: 233/255, green: 238/255, blue: 255/255))
            }
            HStack{
                VStack{
                    Text("4.94")
                        .font(.system(size: 16))
                        .foregroundColor(Color(red: 246/255, green: 144/255, blue: 96/255))
                    Text("Patient Review")
                        .font(.system(size: 10))
                }
                Spacer()
                VStack{
                    Text("100")
                        .font(.system(size: 16))
                    Text("Posts")
                        .font(.system(size: 10))
                }
                Spacer()
                VStack{
                    Text("4 mins")
                        .font(.system(size: 16))
                    Text("Reply")
                        .font(.system(size: 10))
                }
                Spacer()
                VStack{
                    Text("900")
                        .font(.system(size: 16))
                    Text("followers")
                        .font(.system(size: 10))
                }
            }
            .frame(width: 300)
            
            Text("Public Answers")
                .font(.system(size: 24))
            VStack(alignment: .leading){
                HStack{
                    helper.avatar
                        .resizable()
                        .frame(width: 34, height: 34)
                        .clipShape(Circle())
                    Text("Pain Management")
                        .font(.system(size: 12))
                }
                Text("How much methadone should I take for pain?")
                    .font(.system(size: 14))
                Text("I am 35 years old. Today I experienced hallucinations...")
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 115/255, green: 115/255, blue: 115/255))
                Text("The side effects of taking methadone are so strong. ...")
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 115/255, green: 115/255, blue: 115/255))
                Text("Check for more questions >")
                    .font(.system(size: 12))
                    .foregroundColor(Color(red: 31/255, green: 31/255, blue: 31/255))
                
            }
            .padding(10)
            .background(Color(red: 251/255, green: 251/255, blue: 251/255))
            .cornerRadius(10)
            Text("Posts")
                .font(.system(size: 24))
            VStack{
                HStack{
                    HStack{
                        Text("All (100)")
                    }
                    .padding(10)
                    .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                    .cornerRadius(10)
                    HStack{
                        Text("Side-Affects (20)")
                    }
                    .padding(10)
                    .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                    .cornerRadius(10)
                }
                HStack{
                    HStack{
                        Text("Mental Disorder (63)")
                    }
                    .padding(10)
                    .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                    .cornerRadius(10)
                    HStack{
                        Text("Methadone (56)")
                    }
                    .padding(10)
                    .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                    .cornerRadius(10)
                }
            }
            Spacer()
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color.white)
        .padding(10)
    }
}

struct HelperDetail_Previews: PreviewProvider {
    static var previews: some View {
        HelperDetail(helper: helpers[0])
        
    }
}
