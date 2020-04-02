//
//  LoginView.swift
//  App
//
//  Created by Кристина Перегудова on 02.04.2020.
//  Copyright © 2020 Кристина Перегудова. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    @State var isHiding = true
    
    var body: some View {
        VStack {
            
            VStack {
                HStack {
                    Image(systemName: "envelope")
                        .padding()
                    TextField("Enter Email Address", text: $email)
                }.padding(.top)
                
                Divider().padding()
                
                HStack {
                    Image(systemName: "lock")
                        .padding()
                    TextField("Password", text: $password)
                    
                    Button(action: {
                        self.isHiding.toggle()
                    }) {
                        if self.isHiding {
                            Image(systemName: "eye")
                                .renderingMode(.original)
                        } else {
                            Image(systemName: "eye.slash")
                                .renderingMode(.original)
                        }
                        
                    }.padding()
                }.padding(.bottom, 50)
                
            }.background(Color.white)
            .cornerRadius(15)
            .padding()
            
            Button(action: {
                
            }) {
                Text("LOGIN")
                    .padding()
                    .font(.body)
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width / 3 * 2)
                
            }.background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
                .offset(y: -40)
                .shadow(radius: 20)
            
            Button(action: {
                
            }, label: {
                Text("Forget Password?")
                    .foregroundColor(.white)
                    .padding()
                .offset(y: -30)
            })
                
            
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().previewLayout(.sizeThatFits)
    }
}
