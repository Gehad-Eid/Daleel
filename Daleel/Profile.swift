//
//  Profile.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

struct Profile: View {
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .padding(.top, 50)
            
            Text("يزيد العجمي")
                .font(.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text("yazeedAgami@gmail.com")
                .foregroundColor(.gray)
                .padding(.top, 5)
            
            Divider()
                .padding(.vertical, 20)
            
            // Settings Section
            List {
                Section(header: Text("إعدادات الحساب").multilineTextAlignment(.trailing)) {
                    NavigationLink(destination: editView()) {
                        Text("تحرير الملف الشخصي")
                    }
                    NavigationLink(destination: ChangePassword()) {
                        Text("تغيير كلمة المرور")
                    }
                }
                .multilineTextAlignment(.trailing)
            }
            
            Divider()
        }
        .padding(.horizontal)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
