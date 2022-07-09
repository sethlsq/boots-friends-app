//
//  FriendsView.swift
//  boots-friends-app
//
//  Created by Seth Loh on 9/7/22.
//

import SwiftUI

struct FriendsView: View {
    
    
    @StateObject var friendManager = FriendManager()
    
    var body: some View {
        NavigationView {
            List {
                ForEach($friendManager.friends) { $friend in
                    NavigationLink {
                        FriendDetailView(friend: $friend)
                    } label: {
                        HStack {
                            Text(friend.name)
                        }
                    }
                }
            }
            .navigationTitle("My Friends")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                       print("hello world")
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
