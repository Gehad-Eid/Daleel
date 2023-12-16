//
//  Home.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

struct Home: View {
    let userName = "يزيد العجمي" // Replace with the user's name
    
    var body: some View {
        NavigationView {
            ScrollView (showsIndicators: false) {
                VStack {
                    HStack {
                        Spacer()
                        // Profile Picture
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 70, height: 70)
                            .foregroundColor(Color.gray)
                            .padding(.horizontal,20)
                        
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        
                        
                        Text(userName)
                            .font(.title)
                            .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                        
                        Text("مرحبًا")
                            .font(.title)
                            .bold()
                            .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                        
                        
                        Spacer()
                    }
                    
                    //            Spacer()
                    
                    Image("go")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: .infinity)
                    //                    .padding()
                    
                    //            Spacer()
                    
                    HStack {
                        Spacer()
                        Text("خدمات دَليل")
                            .font(
                                Font.custom("Scheherazade New", size: 32)
                                    .weight(.bold)
                            )
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                            .frame(width: 159, height: 49, alignment: .topTrailing)
                            .padding()
                            .padding()
                    }
                    
                    HStack {
                        //                Spacer()
                        Spacer()
                        // this
                        NavigationLink(destination: MapView()) {
                            ZStack {
                                // Your ZStack content for the interactive map
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 146, height: 135)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                                    .cornerRadius(30)
                                    .shadow(color: .black.opacity(0.25), radius: 10, x: 4, y: 0)
                                
                                VStack {
                                    Spacer()
                                    Spacer()
                                    Image("map")
                                        .frame(width: 40.0749, height: 40.09091)
                                    
                                    Spacer()
                                    
                                    Text("الخريطة التفاعلية")
                                        .font(
                                            Font.custom("Scheherazade New", size: 18)
                                                .weight(.bold)
                                        )
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                                        .frame(width: 129, height: 49, alignment: .top)
                                    Spacer()
                                }
                            }
                        }
                        
                        Spacer()
                        //                    this
                        
                        NavigationLink(destination: Route()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 146, height: 135)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                                    .cornerRadius(30)
                                    .shadow(color: .black.opacity(0.25), radius: 10, x: 4, y: 0)
                                
                                VStack {
                                    Spacer()
                                    Spacer()
                                    Image("route")
                                        .frame(width: 40.0749, height: 40.09091)
                                    
                                    Spacer()
                                    
                                    Text("مسار الحملة")
                                        .font(
                                            Font.custom("Scheherazade New", size: 18)
                                                .weight(.bold)
                                        )
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                                        .frame(width: 129, height: 49, alignment: .top)
                                    
                                    Spacer()
                                }
                            }
                        }
                        Spacer()
                        //                Spacer()
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    HStack {
                        Spacer()
                        //                Spacer()
                        
                        //this
                        NavigationLink(destination: Campaigns()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 146, height: 135)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                                    .cornerRadius(30)
                                    .shadow(color: .black.opacity(0.25), radius: 10, x: 4, y: 0)
                                
                                VStack {
                                    Spacer()
                                    Spacer()
                                    Image("man")
                                        .resizable()
                                        .frame(width: 40.0749, height: 40.09091)
                                    
                                    Spacer()
                                    
                                    Text("الحملات")
                                        .font(
                                            Font.custom("Scheherazade New", size: 18)
                                                .weight(.bold)
                                        )
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                                        .frame(width: 129, height: 49, alignment: .top)
                                    
                                    Spacer()
                                }
                            }
                        }
                        
                        Spacer()
                        
                        //this
                        
                        NavigationLink(destination: Report()) {
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.clear)
                                    .frame(width: 146, height: 135)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                                    .cornerRadius(30)
                                    .shadow(color: .black.opacity(0.25), radius: 10, x: 4, y: 0)
                                
                                VStack {
                                    Spacer()
                                    Spacer()
                                    Image("danger")
                                        .frame(width: 40.0749, height: 40.09091)
                                    
                                    Spacer()
                                    
                                    Text("إرسال بلاغ")
                                        .font(
                                            Font.custom("Scheherazade New", size: 18)
                                                .weight(.bold)
                                        )
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                                        .frame(width: 129, height: 49, alignment: .top)
                                    
                                    Spacer()
                                }
                            }
                        }
                        
                        Spacer()
                        //                Spacer()
                    }
                        
                    
                    Spacer()
                    
                    Spacer()
                    
                    Spacer()
                }
            }
        }
    }
}


#Preview {
    Home()
}
