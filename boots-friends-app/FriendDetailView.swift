//
//  FriendDetailView.swift
//  boots-friends-app
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct FriendDetailView: View {
    
    @Binding var friend: Friend
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    TextField("", text: $friend.name)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                }
            }
            .padding(10)
            .background(.quaternary)
            .padding(.init(top: 0, leading: 30, bottom: 0, trailing: 30))
            .cornerRadius(5)
        }
    }
}
//
//struct FriendDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        FriendDetailView(friend: .constant(Friend(name: "Water the cat")))
//    }
//}
