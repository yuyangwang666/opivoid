//
//  MessageMain.swift
//  opivoid (iOS)
//
//  Created by 刘则明 on 9/11/22.
//

import SwiftUI

struct MessageMain: View {
    @State var showPosition = Array(repeating: false, count: messages.count)
    @State var showIn = Array(repeating: false, count: messages.count)
    @State var positon = CGSize.zero
    var body: some View {
        ZStack{
            VStack{
                VStack(alignment: .leading){
                    Text("Message")
                        .font(.system(size: 24))
                    HStack{
                        Spacer()
                        VStack{
                            Image("Schedule 2")
                                .resizable()
                                .frame(width: 90, height: 63)
                            Text("My Schedule")
                                .font(.system(size: 12))
                                .foregroundColor(Color(red: 22/255, green: 182/255, blue: 182/255))
                            Text("Appointments  Activities ")
                                .font(.system(size: 10))
                                .foregroundColor(Color(red: 129/255, green: 129/255, blue: 129/255))
                        }
                        .frame(width: 150, height: 107)
                        .background(Color(red: 197/255, green: 247/255, blue: 180/255))
                        .cornerRadius(10)
                        Spacer()
                        VStack(alignment: .center){
                            Image("Notification 2")
                                .resizable()
                                .frame(width: 90, height: 63)
                            Text("Notification")
                                .font(.system(size: 12))
                                .foregroundColor(Color(red: 245/255, green: 128/255, blue: 73/255))
                            Text("Likes  Comments  Collects")
                                .font(.system(size: 10))
                                .foregroundColor(Color(red: 129/255, green: 129/255, blue: 129/255))
                        }
                        .frame(width: 150, height: 107)
                        .background(Color(red: 255/255, green: 222/255, blue: 173/255))
                        .cornerRadius(10)
                        Spacer()
                    }
                
                }
                .frame(width: .infinity, height: 150)
                .padding()
                HStack(alignment: .top){
                    Spacer()
                    Image("call")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .clipShape(Circle())
                        .frame(maxWidth: 50, alignment: .leading)

                    VStack(alignment: .leading){
                    
                        Text("Emergency Contact")
                            .font(.system(size: 16))
                            .foregroundColor(Color.black)
                        Text("Please call if you need any emergency help.")
                            .font(.system(size: 12))
                            .fontWeight(.medium)
                            .foregroundColor(Color.gray)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            
                        
                    }.frame(maxHeight: 50, alignment: .leading)
                    Spacer()
                }
                .frame(width: .infinity, height: 69)
                .background(Color(red: 233/255, green: 238/255, blue: 255/255))
                .cornerRadius(80)
                .padding(10)
                ScrollView{
                    ForEach(Array(zip(messages.indices, messages)), id: \.0){ index, message in

                            VStack {
                                MessageRow(msg: message)
                                    .onTapGesture {
                                        showPosition[index]=true
                                        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                                showIn[index] = true
                                               }
                                    }.padding(7)
                                    
                            }
//                            .background(Color.red)
                            .cornerRadius(80)
                            
                        }
                    }
                    .padding(5)
                    .background(Color.white)
            }
        }
    }
}

struct MessageMain_Previews: PreviewProvider {
    static var previews: some View {
        MessageMain()
    }
}
