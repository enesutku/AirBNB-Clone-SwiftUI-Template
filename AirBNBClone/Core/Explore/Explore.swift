// Created by Enes UTKU

import SwiftUI

struct Explore: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack (spacing: 22, content: {
                    ForEach(1...10, id: \.self) { listing in
                       ListingView()
                    }
                })
            }.padding()
        }
    }
}

#Preview {
    Explore()
}
