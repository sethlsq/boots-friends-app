//
//  ContentView.swift
//  boots-friends-app
//
//  Created by Seth Loh on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FriendsView()
                .tabItem {
                    Label("Friends", systemImage: "person.2.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
