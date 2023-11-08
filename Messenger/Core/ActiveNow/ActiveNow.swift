//
//  ActiveNow.swift
//  Messenger
//
//  Created by Hologram1 on 11/8/23.
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
            Text("Sean")
                .foregroundColor(Color(.systemGray))
                .font(.subheadline)
                .fontWeight(.semibold)
            
                
        }
    }
}


struct ActiveNow: View {
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 24) {
                ForEach(1...13, id: \.self) { user in
                    ActiveNowRow()
                }
            }
            .padding(.horizontal)
            .frame(height: 100)
        }
    }
}

struct ActiveNow_Previews: PreviewProvider {
    static var previews: some View {
        ActiveNow()
    }
}
