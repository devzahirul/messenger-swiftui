//
//  SignUpView.swift
//  Messenger
//
//  Created by Zahirul Islam on 6/11/23.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack(spacing: 10) {
            // logo
            Image("messenger-icon")
            .resizable()
            .frame(width: 150, height: 150)
            
            // input box
            VStack {
            //name
            TextField("Enter your email", text: $name)
              .padding(12)
              .background(Color(.systemGray6))
              .cornerRadius(10)
            //email
              TextField("Enter your email", text: $email)
              .padding(12)
              .background(Color(.systemGray6))
              .cornerRadius(10)
              //password
              TextField("Enter your password", text: $password)
              .padding(12)
              .background(Color(.systemGray6))
              .cornerRadius(10)
            }.padding(24)
            
            //create account button
            Button {
             // handle action
            } label: {
            Text("Create New Account")
            .foregroundColor(Color.white)
              .frame(width: 320)
              .padding(12)
              .background(Color.blue)
              .cornerRadius(10)
              
              }
            
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
