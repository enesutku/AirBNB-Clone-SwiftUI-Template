// Created by Enes UTKU

import SwiftUI

struct Explore: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                
                SearchAndFilterBar()
                
                LazyVStack (spacing: 22, content: {
                    ForEach(1...10, id: \.self) { listing in
                        NavigationLink(value: listing) {
                            ListingView()
                                .foregroundStyle(.black)
                        }
                    }
                })
            }
            .padding()
            .navigationDestination(for: Int.self) { listing in
                ListingDataView()
                    .navigationBarBackButtonHidden(true)
                }
        }
    }
}

#Preview {
    Explore()
}
