//
//  InboxView.swift
//  Messenger
//
//  Created by Zahirul Islam on 6/11/23.
//

import SwiftUI




struct InboxView: View {
    var body: some View {
        NavigationStack {
        ScrollView(showsIndicators: false) {
            //Active now
            ActiveNow()
            //chat list with last message
            ForEach(1...10, id: \.self) {_ in
            InboxRow()
            }.padding(.horizontal)
        }.toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
             HStack {
               NavigationLink {
                 ProfileView()
               } label: {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 26, height: 26)
                    }
                    
                Text("Chats")
                .font(.largeTitle)
                .fontWeight(.black)
                }
                
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Image(systemName: "square.and.pencil")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 26, height: 26)
                
            }
        }
        }
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}
