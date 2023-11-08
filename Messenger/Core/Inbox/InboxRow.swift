//
//  InboxRow.swift
//  Messenger
//
//  Created by Hologram1 on 11/8/23.
//

import SwiftUI

struct InboxRow: View {
    var body: some View {
    VStack {
        HStack(alignment: .top, spacing: 16) {
       //Image
         Image(systemName: "person.circle.fill")
         .resizable()
         .foregroundColor(Color(.systemGray4))
         .frame(width: 60, height: 60)
         
         //Name & last message
         VStack(alignment: .leading) {
           Text("Islam Md.")
           .font(.subheadline)
           .fontWeight(.bold)
           Text("Hi! I am Here. Are you there?")
           .font(.subheadline)
           .foregroundColor(Color(.systemGray))
           .lineLimit(2)
         }
         Spacer()
         //time
         HStack {
         Text("Yesterday")
         Image(systemName: "chevron.right")
         }.foregroundColor(Color(.systemGray4))
         
         
       }
       Divider()
       }
    }
}

struct InboxRow_Previews: PreviewProvider {
    static var previews: some View {
        InboxRow()
    }
}
