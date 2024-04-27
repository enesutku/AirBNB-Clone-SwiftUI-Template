// Created by Enes UTKU

import SwiftUI

struct WishlistView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, content: {
                
                Text("Log in to view your wishlists")
                    .font(.headline)
                Text("You can create, view and edit your wishlists once you've logged in!")
                    .font(.footnote)
                    .padding(.bottom, 15)
                Button(action: {
                    
                }, label: {
                    Text("Log in")
                        .foregroundStyle(.white)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 48)
                        .background(.pink)
                        .clipShape(.rect(cornerRadius: 10))
                })
                .padding(.bottom)
                
                HStack {
                    Text("Don't have an account?")
                        .foregroundStyle(.gray)
                    
                    Text("Sign Up")
                        .foregroundStyle(.black)
                        .underline()
                }
                .font(.footnote)
                
                Spacer()
                
            }) .navigationTitle("Wishlist")
            .padding()
        }
    }
}

#Preview {
    WishlistView()
}
