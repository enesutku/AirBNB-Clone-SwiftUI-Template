// Created by Enes UTKU

import SwiftUI
import UIKit

struct MainTab: View {
    var body: some View {
        TabView {
            Explore()
                .tabItem { Label("Explore", systemImage: "magnifyingglass") }
            
            WishlistView()
                .tabItem { Label("Wishlists", systemImage: "heart") }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person") }
        }.tint(.black)
    }
}

#Preview {
    MainTab()
}
