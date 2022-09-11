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
        VStack{
            HStack{}
            .frame(width: .infinity, height: 30)
        ScrollView{
            VStack(alignment: .leading){
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
                        HStack{
                            Text("10 Year of Experience")
                                .font(.system(size: 12))
                                .padding(10)
                        }
                        .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                        .cornerRadius(10)
                        HStack{
                            Text("Caring")
                                .font(.system(size: 12))
                                .padding(10)
                        }
                        .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                        .cornerRadius(10)
                    }
                }
                .frame(width: 270, height: 50)
                Spacer()
                HStack{
                    Text("+Follow")
                        .foregroundColor(Color(red: 65/255, green: 99/255, blue: 235/255))
                        .font(.system(size: 14))
                }
                .frame(width: 66, height: 28)
                .background(.white)
                .overlay(RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color(red: 65/255, green: 99/255, blue: 235/255), lineWidth: 1)
                    )
            }
            HStack{
                Spacer()
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
            HStack{
                Spacer()
                Image("CalendarAvailability")
                    .resizable()
                    .frame(width: 33, height: 33)
                VStack{
                    Text("Check Availability")
                        .font(.system(size: 20))
                        .foregroundColor(Color(red: 132/255, green: 210/255, blue: 181/255))
                    Text("to schedule one-on-one meeting/chats")
                        .font(.system(size: 10))
                        .foregroundColor(Color(red: 132/255, green: 210/255, blue: 181/255))
                }
                Text(helper.feeRate+"/h")
                    .font(.system(size: 20))
                    .foregroundColor(Color(red: 132/255, green: 210/255, blue: 181/255))
                Spacer()
            }
            HStack{
                Text("Public Answers")
                    .font(.system(size: 24))
            }
            HStack{
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
                    
            }
            .shadow(color: .gray, radius: 3, x: 3, y: 3)
            HStack{
                Text("Feature Posts(103)")
                    .font(.system(size: 24))
            }
            VStack(alignment: .leading){
                HStack{
                    Text("#Mental Disorder (63)")
                    Text("#Methadone (56)")
                    Text("#Mental (42)")
                }
                .font(.system(size: 12))
                .foregroundColor(Color(red: 22/255, green: 182/255, blue: 182/255))
                HStack{
                    Text("#Side-Affects (20)")
                    Text("#Spirit Healing (15)")
                }
                .font(.system(size: 12))
                .foregroundColor(Color(red: 22/255, green: 182/255, blue: 182/255))
            }
            VStack(alignment: .leading){
                HStack{
                    Text("Building a Culture of Transparency in...")
                        .font(.system(size: 16))
                        .fontWeight(.heavy)
                }
                Spacer()
                HStack{
                    Text("In healthcare today, the conversation around transparency centers on the consumer.\nThe consumer is empowered to ask for treatment options and costs, potential treatment risks, realistic outcomes, and much more. Healthcare providers must respond with as much information as possible to ensure appropriate care is delivered, quality and safety are top of mind, and patients and their care team can make thoughtful care decisions.")
                        .font(.system(size: 14))
                }
                Spacer()
            }
            .padding(10)
            .background(Color(red: 251/255, green: 251/255, blue: 251/255))
            .cornerRadius(10)
            .shadow(color: .gray, radius: 3, x: 3, y: 3)
            Spacer()
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color.white)
        .padding(10)
        }
            HStack {
                Text("Consult")
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
            }
            .frame(width: 348, height: 47)
            .background((Color(red: 65/255, green: 99/255, blue: 235/255)))
            .cornerRadius(10)
           Spacer()
        }
        .background(Color.white)
        .padding(10)
    }
}

struct HelperDetail_Previews: PreviewProvider {
    static var previews: some View {
        HelperDetail(helper: helpers[0])
        
    }
}
