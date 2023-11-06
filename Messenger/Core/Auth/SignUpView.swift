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
                .scaledToFill()
                .frame(width: 150, height: 150)
                .padding()
                .padding(.bottom, 60)
            // input
            VStack {
                TextField("Enter your name", text: $name)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                TextField("Enter your email", text: $email)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                SecureField("Enter your password", text: $password)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
            }
            .padding(.horizontal, 24)
             
            //signup button
            Button {
                
            } label: {
                Text("Create new Account")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding()
                    .frame(width: 360)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
