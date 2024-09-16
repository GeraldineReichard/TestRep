//
//  UserInfoView.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 20.08.24.
//

import SwiftUI

struct UserInfoView: View {
    let user: User
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("DEBUG: Show profile here")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                    
                }
            }
            Text("Some test bio for now...")
                .font(.subheadline)
                .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
        }
        .foregroundColor(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear,.black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(user: MockData.users[1])
}
