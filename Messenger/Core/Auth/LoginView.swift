//
//  LoginView.swift
//  Messenger
//
//  Created by Zahirul Islam on 6/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack {
            VStack(spacing: 10) {
                Spacer()
                // logo
                Image("messenger-icon")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .padding()
                // input
                VStack {
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
                
                
                //forgot password
                Button {
                    print("Button Action")
                } label: {
                    Text("Forgot password?")
                        .padding()
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                //login
                NavigationLink {
                    InboxView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Login")
                        .foregroundColor(Color.white)
                        .padding()
                        .frame(width: 360)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                }

                
                
                //registration
                HStack {
                    Rectangle()
                        .fill(Color(.systemGray4))
                        .frame(height: 0.5)
                    Text("OR")
                    Rectangle()
                        .fill(Color(.systemGray4))
                        .frame(height: 0.5)
                    
                }.padding(.horizontal)
                Button {
                    
                } label: {
                    HStack {
                        Image("facebook-icon")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 26, height: 26)
                        Text("Continue with Facebook")
                    }
                }
                
                
                Spacer()
                
                //footer
                VStack {
                    Divider()
                    NavigationLink {
                        SignUpView()
                    } label: {
                        HStack(spacing: 3) {
                            Text("Don't have account?")
                            Text("Sign Up")
                                .font(.footnote)
                                .fontWeight(.semibold)
                        }
                    }

                       
                    
                    
                }.padding(.horizontal)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
