//
//  SwiftUIView.swift
//  Daleel
//
//  Created by Gehad Eid on 15/12/2023.
//

import SwiftUI

struct Report: View {
    @State var selectedReportType = ""
    @State var email = ""
    
    
    @State private var isLoginActive = false
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
                
                Image("danger")
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
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Spacer()
                    
                    Text("إرسال بلاغ")
                        .font(
                            Font.custom("Scheherazade New", size: 36)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                        .frame(width: 257, height: 98, alignment: .top)
                    
                    
                    Spacer()
                    
                    
                    
                    
                    
                    
                    Picker("نوع البلاغ", selection: $selectedReportType) {
                        Text("صحي").tag("صحي")
                        Text("نقص ميزانية").tag("نقص ميزانية")
                        Text("ضياع").tag("ضياع")
                        Text("تبليغ عن فقدان شخص").tag("تبليغ عن فقدان شخص")
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding()
                    .frame(width: 303, height: 44)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .cornerRadius(15)
                    .padding(.bottom, 20)
                    
                    TextField("وصف المشكلة", text: $email)
                        .padding()
                        .frame(width: 303, height: 44)
                        .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .cornerRadius(15)
                        .multilineTextAlignment(.trailing)
                        .padding(.bottom,20)
                    
                    // Drop-down list for password
                    Picker("اسم المشرف", selection: $selectedReportType) {
                        Text("فهد عمر البقمي").tag("فهد عمر البقمي")
                        Text("سلطان نواف العصيمي").tag("سلطان نواف العصيمي")
                        Text("عايض محمد القحطاني").tag("عايض محمد القحطاني")
                        Text("عاصم عبدالله الاسمري").tag("عاصم عبدالله الاسمري")
                        Text("هزاع فهد الزهراني").tag("هزاع فهد الزهراني")
                    }
                    .pickerStyle(MenuPickerStyle())
                    .padding()
                    .frame(width: 303, height: 44)
                    .background(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .cornerRadius(15)
                    .padding(.bottom, 20)
                    
                    
                    
//                    NavigationLink(destination: HomeScreen().navigationBarBackButtonHidden(true), isActive: $isLoginActive) {
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
                            
                            Text("أبلِغ")
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
                            isLoginActive = true
                            dismiss()
                        }
//                    }
                    
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
    Report()
}
