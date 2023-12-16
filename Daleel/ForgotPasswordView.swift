//
//  ForgotPasswordView.swift
//  Daleel
//
//  Created by Gehad Eid on 15/12/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State var text = ""
    @State var password = ""
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 395, height: 799.48822)
                    .background(Color(red: 0.17, green: 0.58, blue: 0.56))
                    .cornerRadius(150)
                    .rotationEffect(Angle(degrees: 179.72))
                    .offset(y:140)
                
                Image("logo")
                    .resizable()
                    .frame(width: 101, height: 98)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .clipShape(Circle())
                    .offset(y:-270)
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Text("تعيين كلمة المرور")
                        .font(
                            Font.custom("Scheherazade New", size: 36)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                        .frame(width: 257, height: 98, alignment: .top)
                    
                    
                    Spacer()
                    
                    //                    Text("رقم الهوية")
                    //                        .font(
                    //                            Font.custom("Scheherazade New", size: 20)
                    //                                .weight(.bold)
                    //                        )
                    //                        .multilineTextAlignment(.trailing)
                    //                        .foregroundColor(.white)
                    //                        .frame(width: 257, height: 41, alignment: .topTrailing)
                    //
                    
                    TextField("ادخل رقم الهوية", text: $text)
                        .padding()
                        .frame(width: 303, height: 44)
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .cornerRadius(15)
                        .multilineTextAlignment(.trailing)
                        .padding(.bottom, 20)
                    
//                    Spacer()
                   
                    
                    
                    SecureField("ادخل البريد الالكتروني", text: $password)
                        .padding()
                        .frame(width: 303, height: 44)
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .cornerRadius(15)
                        .multilineTextAlignment(.trailing)
                        .padding(.bottom,20)
                    
                   ZStack {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 303, height: 60)
                      .background(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.3))
                      .cornerRadius(15)
                      .overlay(
                        RoundedRectangle(cornerRadius: 15)
                          .inset(by: 0.5)
                          .stroke(Color(red: 0.82, green: 0.71, blue: 0.51), lineWidth: 1)
                      )
                    Text("ارسل الرمز")
                      .font(
                        Font.custom("Scheherazade New", size: 26)
                          .weight(.bold)
                      )
                      .kerning(0.2)
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                      .frame(width: 375, height: 16, alignment: .center)
                }
                   .onTapGesture {
                       dismiss()
                   }
                
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ForgotPasswordView()
}