//
//  MainTabBar.swift
//  TinderTest4723814
//
//  Created by Geraldine Reichard on 19.08.24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView() {
            CardStackView()
                .tabItem { Image(systemName: "flame") }
                .tag(0)
            
            Text("Serach View")
                .tabItem { Image(systemName: "magnifyingglass") }
                .tag(1)
            
            Text("Inbox View")
                .tabItem { Image(systemName: "bubble") }
                .tag(2)
            
            Text("Profile View")
                .tabItem { Image(systemName: "person") }
                .tag(3)
        }
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
}
