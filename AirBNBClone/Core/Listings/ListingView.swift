// Created by Enes UTKU

import SwiftUI

struct ListingView: View {
    
    var body: some View {
        VStack(spacing: 0, content: {
            ListingImageCarouseView()
                .frame(height: 300)
                .clipShape(.rect(cornerRadius: 20))
            HStack {
                VStack(alignment: .leading, content: {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                    Text("12 km away")
                        .foregroundStyle(.gray)
                    Text("Nov 26 - 28")
                        .foregroundStyle(.gray)
                    
                    HStack(spacing: 4, content: {
                        Text("$120")
                            .fontWeight(.semibold)
                    })
                })
                
                Spacer()
                
                HStack(spacing: 2, content: {
                    Image(systemName: "star.fill")
                    Text("4.65")
                })
            }
            .padding()
        })
    }
}

#Preview {
    ListingView()
}
