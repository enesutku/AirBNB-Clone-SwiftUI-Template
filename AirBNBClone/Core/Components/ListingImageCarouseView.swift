// Created by Enes UTKU

import SwiftUI

struct ListingImageCarouseView: View {
    
    var images = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5"
    ]
    
    var body: some View {
        TabView {
            ForEach(images, id: \.self) { image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(.page)
    }
}

#Preview {
    ListingImageCarouseView()
}
