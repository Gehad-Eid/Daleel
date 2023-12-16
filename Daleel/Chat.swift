//
//  Chat.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
    let isUser: Bool
}

struct Chat: View {
    let user: User
    
    @State private var messages = [
        Message(text: "السلام عليكم", isUser: false),
        Message(text: "وعليكم السلام", isUser: true),
        Message(text: "وينك؟", isUser: false),
        Message(text: "انا عند باب السلام", isUser: true),
        Message(text: "تعال بسرعة لان الباص بيتحرك الان", isUser: false),
    ]
    @State private var newMessage = ""

    var body: some View {
        VStack {
            VStack {
                HStack {
                    
                    
                    Image(systemName: "phone")
                        .padding(.trailing, 10)
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                    
                    Image(systemName: "video")
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                    
                    
                    Spacer()
                    
                    Text(user.name)
                        .font(.title)
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                        .fontWeight(.bold)
                    
                    
                }
                .padding()
                
                Divider()
            }
            VStack {
                Text("اليوم")
                    .font(.caption)
                    .foregroundColor(.white)
                    .padding(.vertical, 5)
                    .frame(width: 100)
                    .background(Color.gray)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            }
            
            ScrollView {
                ForEach(messages) { message in
                    MessageView(message: message)
                }
            }
            .padding()
            
            HStack {
                Image(systemName: "plus")
                    .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
//                    .padding()
                
                TextField("اكتب شيء", text: $newMessage, onCommit: sendMessage)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .multilineTextAlignment(.trailing)
//                    .padding(.horizontal)
                
                HStack{
                    Image(systemName: "camera.fill")
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
//                        .padding()
                    
                    Image(systemName: "mic.fill")
                        .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                }
            }
            .padding(.bottom)
            .padding(.horizontal)
        }
        //        .navigationBarTitle("Chat")
    }
    
    func sendMessage() {
        guard !newMessage.isEmpty else { return }
        messages.append(Message(text: newMessage, isUser: true))
        newMessage = ""
    }
}

struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.isUser {
                Spacer()
            }
            Text(message.text)
                .padding(10)
                .background(message.isUser ? Color(red: 0.17, green: 0.58, blue: 0.56) : Color.gray.opacity(0.6))
                .foregroundColor(.white)
                .cornerRadius(10)
            if !message.isUser {
                Spacer()
            }
        }
    }
}

//struct Chat_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationView {
//            Chat()
//        }
//    }
//}
