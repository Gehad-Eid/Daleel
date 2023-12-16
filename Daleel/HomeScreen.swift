//
//  Home.swift
//  Daleel
//
//  Created by Gehad Eid on 15/12/2023.
//

import SwiftUI

struct HomeScreen: View {
    @State private var selectedTab = 1 // Set the initial selected tab
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.bottom) // Set black background for the entire view
            
            TabView(selection: $selectedTab) {
                // First Tab
                Home()
                    .tabItem {
                        Image(systemName: "house")
                            .foregroundColor(Color.white)
                        Text("الرئيسية")
                    }
                    .tag(1)
                
                // Second Tab
                MapView()
                    .tabItem {
                        Image(systemName: "map")
                            .foregroundColor(Color.white)
                        Text("الخريطة")
                    }
                    .tag(2)
                
                UserChatsView()
                    .tabItem {
                        Image(systemName: "message")
                            .foregroundColor(Color.white)
                        Text("المحادثة")
                    }
                    .tag(4)
                
                // Third Tab
                Profile()
                    .tabItem {
                        Image(systemName: "person")
                            .foregroundColor(Color.white)
                        Text("الحساب")
                    }
                    .tag(3)
            }
            .background(Color.black)
            .accentColor(Color(#colorLiteral(red: 0.82, green: 0.71, blue: 0.51, alpha: 1.0)))
            .edgesIgnoringSafeArea(.bottom)
        }
        .edgesIgnoringSafeArea(.bottom)
//        .cornerRadius(16)
    }
}


#Preview {
    HomeScreen()
}
