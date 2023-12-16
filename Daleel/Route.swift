//
//  Route.swift
//  Daleel
//
//  Created by Gehad Eid on 16/12/2023.
//

import SwiftUI

struct Checkbox: View {
    @Binding var isChecked: Bool
    
    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            if isChecked {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
            } else {
                Image(systemName: "circle")
                    .foregroundColor(.gray)
            }
        }
    }
}

struct Route: View {
    @State private var isAddDestinationViewPresented = false
    
    @State private var isTextEditorVisible = false
       @State private var destinationText = ""
    @State private var messages: [String] = []
    @State var isChecked = false
    @State var Checked = true
    @State var notChecked = false


    var body: some View {
        NavigationView {
            ScrollView{
            VStack {
//                Spacer()
                
                // Title at the top middle
                HStack {
//                    Spacer()
                    Text("مسار الحملة")
                      .font(
                        Font.custom("Scheherazade New", size: 30)
                          .weight(.bold)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.17, green: 0.58, blue: 0.56))
                      .frame(width: 202, height: 49, alignment: .top)
                    
//                    Spacer()
                    Image("route")
                    .frame(width: 40, height: 40.09)
                }
                .padding()
                
//                Spacer()
                
                // Button to navigate to another view
                Button(action: {
                   isTextEditorVisible.toggle()
               }) {
                    HStack {
                        Spacer()
                        Text("إضافة وجهة جديدة لمسار الرحلة")
                            .font(.body)
                            .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                            .multilineTextAlignment(.trailing)
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                       
                    }
                    .padding()
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .padding()
//                .sheet(isPresented: $isAddDestinationViewPresented) {
//                    AddDestinationView()
//                }
                
                
                HStack {
                    Spacer()
                    Text("الإحرام عند الميقات")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $Checked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("تسجيل الدخول الى الفندق")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $Checked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("ركوب الباص المتجه للحرم")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $Checked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("الطواف")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $notChecked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("السعي")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $notChecked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("الحلق للرجال")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $notChecked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                HStack {
                    Spacer()
                    Text("العودة للفندق")
                        .font(.body)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.trailing)
                    
                    Checkbox(isChecked: $notChecked)
                        .font(.title)
                        .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                }
                .padding(.horizontal, 30)
                .foregroundColor(.white)
                .cornerRadius(8)
                .onTapGesture {
                    messages.append(destinationText)
                    destinationText = ""
                }
                
                if isTextEditorVisible {
                    ZStack(alignment: .topTrailing){
                        
                        
                       ZStack (alignment: .bottomTrailing) {
                            RoundedRectangle(cornerRadius: 30)
                                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                                .frame(width: 373, height: 154)
                                .shadow(color: .black.opacity(0.25), radius: 10, x: 4, y: 0)
                                .overlay(
                                    TextEditor(text: $destinationText)
                                        .keyboardType(.default)
                                        .onSubmit {
                                            isTextEditorVisible = false
                                            isAddDestinationViewPresented = true
                                        }
                                        .padding()
                                )
                           Button(action: {
                               isTextEditorVisible = false
                               isAddDestinationViewPresented = true
                           }) {
                               Image(systemName: "paperplane.fill")
                                   .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
                                   .padding()
//                                   .background(Color.clear)
                                   .cornerRadius(8)
                           }
                           .padding()
                           .opacity(isTextEditorVisible ? 1 : 0)
                            
                        }
                        
                        if destinationText.isEmpty {
                            Text("ضَع الوجهة التالية للحملة")
                                .foregroundColor(.gray)
                                .padding(.horizontal)
                                .padding(.top, 35)
                                .padding(20)
                        }
                        
                        Image(systemName: "plus.circle.fill")
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding(20)
                        
                        // Character count
//                       HStack{
//                           Text("Character Count: \(destinationText.count)")
//                               .foregroundColor(.gray)
//                               .padding(.top, 4)
//                       }
                    }
                }
                
                // Add the entered text to HStack
                if isAddDestinationViewPresented {
                    HStack {
                        Spacer()
                        Text(destinationText)
                            .font(.body)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.trailing)
                        
                        Checkbox(isChecked: $isChecked)
                            .font(.title)
                            .foregroundColor(Color(red: 0.82, green: 0.71, blue: 0.51))
//                            .overlay(
//                                Checkbox(isChecked: $isChecked)
//                                    .font(.largeTitle)
//                            )
                    }
                    .padding(.horizontal, 30)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    .onTapGesture {
                        messages.append(destinationText)
                        destinationText = ""
                    }
                }
                
                Spacer()
                Spacer()
                Spacer()
            }
            .navigationBarHidden(true)
        }}
    }
}

struct AddDestinationView: View {
    var body: some View {
        Text("Add Destination View")
    }
}
