//
//  UserChatsView.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let name: String
    let lastMessage: String
    let timestamp: String
    let imageName: String
}

struct UserChatsView: View {
    let users: [User] = [
        User(name: "لؤي الزهاني", lastMessage: "تعال بسرعة لان الباص بيتحرك الان", timestamp: "١١:١٥ ص", imageName: "person.circle"),
        User(name: "جهاد عيد", lastMessage: "وينِك؟", timestamp: "١٠:٣٠ ص", imageName: "person.circle"),
        User(name: "مها القحطاني", lastMessage: "انا في الطريق مع باص ١٠٥", timestamp: "امس", imageName: "person.circle"),
        // Add more users as needed
    ]
    
    var body: some View {
            NavigationView {
                List {
                    Section(header:
                                HStack {
                        Spacer()
                        Text("الرسائل")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                            .multilineTextAlignment(.trailing)
                    }
                        .padding()
                    ) {
                        ForEach(users) { user in
                            NavigationLink(destination: Chat(user: user)) {
                                UserChatRow(user: user)
                            }
                        }
                    }
                }
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("")
                .navigationBarHidden(true)
            }
        }
    }

struct UserChatRow: View {
    let user: User
    
    var body: some View {
        HStack {
            Image(systemName: user.imageName)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
            
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.headline)
                
                Text(user.lastMessage)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            
            Spacer()
            
            Text(user.timestamp)
                .foregroundColor(.gray)
                .font(.footnote)
        }
        .padding(.vertical, 8)
    }
}


#Preview {
    UserChatsView()
}
