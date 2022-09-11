//
//  HelperList.swift
//  opivoid (iOS)
//
//  Created by 王禹旸 on 2022/9/10.
//

import SwiftUI

struct HelperList: View {
    @State var showPositionHelper = Array(repeating: false, count: helpers.count)
    @State var showInHelper = Array(repeating: false, count: helpers.count)
    @State var positon = CGSize.zero
    var body: some View {
        ZStack{
            VStack{
                VStack(alignment: .leading){
                    Text("Care")
                        .font(.system(size: 24))
                    HStack{
                        Spacer()
                        VStack{
                            Image("Doctor")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .cornerRadius(10)
                            Text("Doctor")
                                .font(.system(size: 14))
                            Spacer()
                        }
                        Spacer()
                        VStack{
                            Image("Peer")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .cornerRadius(10)
                            Text("Certificated Peer")
                                .font(.system(size: 14))
                                .multilineTextAlignment(.center)
                                .frame(width: 80)
                            Spacer()
                        }
                        Spacer()
                        VStack{
                            Image("Community")
                                .resizable()
                                .frame(width: 70, height: 70)
                                .cornerRadius(10)
                            Text("Community")
                                .font(.system(size: 14))
                            Spacer()
                        }
                        Spacer()
                    }
                    Text("Recommended for you")
                        .font(.system(size: 18))
                }
                .frame(width: .infinity, height: 200)
                .padding()
                ScrollView{
                    ForEach(Array(zip(helpers.indices, helpers)), id: \.0){ index, helper in

                        VStack {
                            HelperRow(helper: helper)
                                .onTapGesture {
                                    showPositionHelper[index]=true
                                    DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                        showInHelper[index] = true
                                           }
                                }
                                
                        }
                        .padding(5)
                        .background(Color.white)
                        .cornerRadius(10)
                        
                        }
                    }
                    .padding(10)
                .background(Color(red: 239/255, green: 239/255, blue: 239/255))
            }
            ForEach(Array(zip(helpers.indices, helpers)), id: \.0){ index, helper in
                if showPositionHelper[index]{
                    ZStack {
                        HelperDetail(helper: helper)
                            .offset(x: showInHelper[index] ? 0 : UIScreen.main.bounds.width)
                        HStack{
                            VStack{
                                Image(systemName: "chevron.left")
                                .foregroundColor(.secondary)
                                .onTapGesture {
                                    showInHelper[index] = false
                                DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                    showPositionHelper[index] = false
                                   }
                                }
                                Spacer()
                            }
                            .padding(10)
                            Spacer()
                        }
                        .padding()
                    }
                    .offset(x: showInHelper[index] ? 0 : UIScreen.main.bounds.width)
                    .offset(x: positon.width)
                    .gesture(DragGesture().onChanged{value in
                        self.positon = value.translation
                    }
                    .onEnded{ value in
                        if value.translation.width > 0.3*UIScreen.main.bounds.width{
                            showInHelper[index] = false
                            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.001){
                                showPositionHelper[index] = false
                            }
                        }
                        self.positon = .zero
                    })
                }
            }
        }
    }
}

struct HelperList_Previews: PreviewProvider {
    static var previews: some View {
        HelperList()
    }
}
