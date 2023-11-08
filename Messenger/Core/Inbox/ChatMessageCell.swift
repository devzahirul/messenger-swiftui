//
//  ChatMessageCell.swift
//  Messenger
//
//  Created by Hologram1 on 11/8/23.
//

import SwiftUI

struct ChatMessageCell: View {
    let isFromCurrentUser: Bool
    var body: some View {
        HStack {
          if isFromCurrentUser {
            Spacer()
            Text("This is from current User.sdfjksd fsjdfksdf dfgdfg")
            .foregroundColor(Color.white)
            .font(.subheadline)
            .padding(12)
            .background(Color.blue)
            .clipShape(ChatBubble(isFromCurrentUser: true))
            .frame(maxWidth: UIScreen.main.bounds.width / 1.5, alignment: .trailing)
          } else {
            HStack(alignment: .bottom, spacing: 8) {
              Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 26, height: 26)
                    
            Text("This is from sender")
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray5))
            .clipShape(ChatBubble(isFromCurrentUser: false))
            .frame(maxWidth: UIScreen.main.bounds.width / 1.75, alignment: .leading)
              Spacer()
            }
          }
        }.padding(.horizontal)
    }
}

struct ChatMessageCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatMessageCell(isFromCurrentUser: true)
        
    }
}
