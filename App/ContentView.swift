//
//  ContentView.swift
//  App
//
//  Created by Кристина Перегудова on 02.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var tag = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .top, endPoint: .bottom).edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                HStack {
                    Button(action: {
                        withAnimation(.spring()) {
                            self.tag = 0
                        }
                    }) {
                        Text("Existing")
                            .bold()
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width - 30) / 2)
                    }.foregroundColor(tag == 0 ? .black : .white)
                    .background(tag == 0 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                    
                    Button(action: {
                        withAnimation(.spring()) {
                            self.tag = 1
                        }
                    }) {
                        Text("New")
                            .bold()
                            .padding(.vertical)
                            .frame(width: (UIScreen.main.bounds.width - 30) / 2)
                    }.foregroundColor(tag == 1 ? .black : .white)
                    .background(tag == 1 ? Color.white : Color.clear)
                    .clipShape(Capsule())
                    
                }.background(Color.black.opacity(0.1).clipShape(Capsule()).frame(width: UIScreen.main.bounds.width - 30))
                    .padding(.vertical)
                    
                
                if tag == 0 {
                    LoginView()
                } else {
                    SignUpView()
                }
                
                Text("--- OR ---")
                    .foregroundColor(.white)
                
                HStack(spacing: 20) {
                    Image("vk")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .padding()
                        .background(Color.white.clipShape(Circle()))
                    
                    Image("google")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .padding()
                        .background(Color.white.clipShape(Circle()))
                        
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
