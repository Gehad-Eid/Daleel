//
//  Campaigns.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

struct Campaigns: View {
    @State private var selectedTab = 0
    
    var body: some View {
        NavigationView {
            VStack {
                // Title at the top middle
                HStack {
                    Text("حملاتي")
                        .font(
                            Font.custom("Scheherazade New", size: 30)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                        .frame(width: 202, height: 49, alignment: .top)
                    
                    Image("man")
                        .resizable()
                        .frame(width: 40, height: 40.09)
                }
                .padding()
                
                // Top app bar tabs
                HStack {
                    Button(action: {
                        selectedTab = 0
                    }) {
                        Text("السابقة")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(width: 100)
                            .background(selectedTab == 0 ? Color(red: 0.82, green: 0.71, blue: 0.51) : .gray)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
//                            .foregroundColor(selectedTab == 0 ? .blue : .gray)
                    }
                    
                    Button(action: {
                        selectedTab = 1
                    }) {
                        Text("الحالية")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(width: 100)
                            .background(selectedTab == 1 ? Color(red: 0.82, green: 0.71, blue: 0.51) : .gray)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .foregroundColor(selectedTab == 1 ? .blue : .gray)
                    }
                    
                    Button(action: {
                        selectedTab = 2
                    }) {
                        Text("القادمة")
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(.vertical, 5)
                            .frame(width: 100)
                            .background(selectedTab == 2 ? Color(red: 0.82, green: 0.71, blue: 0.51) : .gray)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .foregroundColor(selectedTab == 1 ? .blue : .gray)
                    }
                }
                .padding()
                
                // View content based on selected tab
                if selectedTab == 0 {
                    ViewForTab1()
                } 
                else if selectedTab == 1 {
                    ViewForTab2()
                }
                else {
                    ViewForTab3()
                }
//                .navigationBarHidden(true)
            }
        }
    }
    
    // Replace with your views for each tab
    // ViewForTab1 and ViewForTab2 represent the content of each tab
    // You can replace them with your actual views
    struct ViewForTab1: View {
        var body: some View {
            ScrollView{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 13/6/1441")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة الإحسان ")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 5/8/1439")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة النور")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 9/9/1435")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة الظافرة")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 5/8/1434")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة مشاعر")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
            
            
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 18/6/1434")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة المحمل")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
        }}
    }
    
    struct ViewForTab2: View {
        var body: some View {
            ScrollView{
                ZStack{
                    RoundedRectangle(cornerRadius: 20)
                        .frame(width: 367, height: 44)
                        .foregroundColor(Color(red: 0.06, green: 0.68, blue: 0.23).opacity(0.43))
                        .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                    
                    HStack{
                        Spacer()
                        Text("التاريخ: 13/4/1445")
                            .font(Font.custom("Scheherazade New", size: 15))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                        //                      .frame(width: 163, height: 34)
                        Spacer()
                        Text("حملة عين ")
                            .font(Font.custom("Scheherazade New", size: 15))
                            .bold()
                            .multilineTextAlignment(.center)
                            .foregroundColor(.black)
                        //                      .frame(width: 110, height: 34)
                        Spacer()
                        
                    }
                }
            }
        }
    }
}

struct ViewForTab3: View {
    var body: some View {
        ScrollView{
            ZStack{
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 367, height: 44)
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.43))
                    .shadow(color: .black.opacity(0.11), radius: 7.5, x: 0, y: 4)
                
                HStack{
                    Spacer()
                    Text("التاريخ: 11/9/1445")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.29, green: 0.33, blue: 0.35))
                    //                      .frame(width: 163, height: 34)
                    Spacer()
                    Text("حملة رفا ")
                        .font(Font.custom("Scheherazade New", size: 15))
                        .bold()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    //                      .frame(width: 110, height: 34)
                    Spacer()
                    
                }
            }
        }
    }
}



#Preview {
    Campaigns()
}
