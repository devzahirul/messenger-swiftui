//
//  ChatView.swift
//  Messenger
//
//  Created by Hologram1 on 11/8/23.
//

import SwiftUI

struct ChatView: View {

    @State var message: String = ""
    
    var body: some View {
        VStack {
        ScrollView(showsIndicators: false) {
            //header
            VStack {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 100, height: 100)
                VStack(spacing: 4) {
                    Text("Islam Md. Zahirul")
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    Text("Messager")
                        .font(.footnote)
                        .foregroundColor(Color.gray)
                }
            }
            //messages
            
            ForEach(1...20, id: \.self) {_ in
              ChatMessageCell(isFromCurrentUser: Bool.random())
            }
            
            
        }
        //message input view
            ZStack(alignment: .trailing) {
              TextField("Message...", text: $message, axis: .vertical)
              .padding()
              .padding(.trailing, 48)
              .background(Color(.systemGroupedBackground))
              .clipShape(Capsule())
              .font(.subheadline)
              .lineLimit(5)
              
                Button {
                    
                } label: {
                    Text("Send")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .padding(.trailing)
                }

            }.padding()
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
