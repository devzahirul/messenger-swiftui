//
//  ProfileView.swift
//  Messenger
//
//  Created by Hologram1 on 11/8/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
       VStack {
         // header
         VStack {
           Image(systemName: "person.circle.fill")
           .resizable()
           .frame(width: 80, height: 80)
           .foregroundColor(Color(.systemGray4))
           
           Text("Islam Md. Zahirul")
           .font(.title2)
           .fontWeight(.semibold)
         }
         
         //list
         List {
         
           Section {
            ForEach(SettingOptionViewModel.allCases) {option in
              HStack {
                Image(systemName: option.imageName)
                .resizable()
                .frame(width: 24, height: 24)
                .foregroundColor(option.imageBackgroundColor)
                
                Text(option.title)
                .font(.subheadline)
                
              }
            }
           }
           
           Section {
           
             Button("Log Out") {}
             Button("Delete Account") {}
           }.foregroundColor(Color(.red))
         }
         
         
       }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
