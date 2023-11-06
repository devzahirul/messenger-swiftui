//
//  InboxView.swift
//  Messenger
//
//  Created by Zahirul Islam on 6/11/23.
//

import SwiftUI



struct ActiveNowRow: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 60, height: 60)
                
                ZStack {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 18, height: 18)
                    Circle()
                        .fill(Color.green)
                        .frame(width: 12, height: 12)
                }
                
            }
            Text("Sean Won")
                .foregroundColor(Color.black)
                .font(.subheadline)
                .fontWeight(.semibold)
            
                
        }
    }
}


struct ActiveNow: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(1...13, id: \.self) { user in
                    ActiveNowRow()
                }
            }
            .padding(.horizontal)
            .frame(height: 100)
        }
    }
}

struct InboxView: View {
    var body: some View {
        NavigationStack {
        ScrollView {
            //Active now
            ActiveNow()
            //chat list with last message
        }.toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .foregroundColor(Color(.systemGray4))
                    .frame(width: 26, height: 26)
                
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
