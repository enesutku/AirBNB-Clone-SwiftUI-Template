// Created by Enes UTKU

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading, content: {
                Text("Profile")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            
            Text("Log in to start planning your next trip!")
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
        })
        .padding()
    }
}

#Preview {
    ProfileView()
}
