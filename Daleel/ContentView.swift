//
//  ContentView.swift
//  Daleel
//
//  Created by Gehad Eid on 15/12/2023. 
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    UnevenRoundedRectangle(
                        cornerRadii: .init(bottomLeading: 120,
                                            bottomTrailing: 120)
                    )
                    .fill(Color("BackgoundDecoration").opacity(0.5))
                    .frame(height: 500, alignment: .top)
                    .edgesIgnoringSafeArea(.top)
                    .offset(y: -100)

                    VStack {
                        Spacer()
                        Text("مرحبًا")
                            .font(.largeTitle)
                            .foregroundColor(Color("BackgoundDecoration"))

                        Image("logo")
                            .resizable()
                            .frame(width: 300, height: 300)
                        Spacer()
                        Spacer()
                    }
                }
                .frame(width: 393, height: 852)
                .background(Color(red: 0.17, green: 0.58, blue: 0.57).opacity(0.04))

                NavigationLink(destination: logIn().navigationBarBackButtonHidden(true)) {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 303, height: 60)
                            .background(Color(red: 0.82, green: 0.71, blue: 0.51).opacity(0.11))
                            .cornerRadius(15)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.82, green: 0.71, blue: 0.51), lineWidth: 1)
                            )

                        Text("لنبدأ")
                            .font(
                                Font.custom("Scheherazade New", size: 26)
                                    .weight(.bold)
                            )
                            .kerning(0.2)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                            .frame(width: 375, height: 16, alignment: .center)
                    }
                }
                .offset(y: -150)
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
