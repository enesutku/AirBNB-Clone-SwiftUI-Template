// Created by Enes UTKU

import SwiftUI

struct Explore: View {
    
    @State private var showDestinationSearchView = false
    
    var body: some View {
            NavigationStack {
                ScrollView {
                    
                    SearchAndFilterBar()
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    
                    
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
