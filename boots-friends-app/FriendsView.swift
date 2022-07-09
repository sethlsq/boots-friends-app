//
//  FriendsView.swift
//  boots-friends-app
//
//  Created by Seth Loh on 9/7/22.
//

import SwiftUI

struct FriendsView: View {
    
    @State var isSheetPresented = false
    
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
                .onDelete { indexSet in
                    friendManager.friends.remove(atOffsets: indexSet)
                }
                .onMove { indices, newOffset in
                    friendManager.friends.move(fromOffsets: indices, toOffset: newOffset)
                }
            }
            .navigationTitle("My Friends")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isSheetPresented = true
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isSheetPresented) {
                NewFriendView(friends: $friendManager.friends)
            }
        }
    }
}

struct FriendsView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsView()
    }
}
