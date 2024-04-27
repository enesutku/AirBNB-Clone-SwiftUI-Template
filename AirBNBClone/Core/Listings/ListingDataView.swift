// Created by Enes UTKU

import SwiftUI
import MapKit

struct ListingDataView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var images = [
        "image1",
        "image2",
        "image3",
        "image4",
        "image5"
    ]
    
    var body: some View {
        ScrollView {
            ZStack(alignment: .topLeading) {
                ListingImageCarouseView()
                    .frame(height: 320)
                
                Button(action: {
                    dismiss()
                }, label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(.top, 90)
                        .padding(.leading, 20)
                })
            }
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading, content: {
                    HStack(spacing: 2, content: {
                        Image(systemName: "star.fill")
                        Text("4.65")
                        Text("-")
                        Text("12 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    })
                    .font(.caption)
                    .foregroundStyle(.black)
                    
                    Text("Miami, Florida")
                })
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            // Host Info
            HStack {
                VStack(alignment: .leading, spacing: 8, content: {
                    Text("Entire villa hosted by Enes UTKU")
                        .font(.headline)
                    
                    HStack(spacing: 2) {
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                })
                
                Spacer()
                
                Image("profile")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 64, height: 64)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
            .padding()
            
            Divider()
            
            // Listing Feature
            VStack(alignment: .leading, spacing: 16, content: {

                    HStack(spacing: 12, content: {

                        Image(systemName: "location")
                        
                        VStack(alignment: .leading, content: {
                            Text("Perfect Location")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Guests who stayed here recently gave the property 5 stars! So this is the perfect place to stay.")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        })
                    })
                HStack(spacing: 12, content: {
                    
                Image(systemName: "wifi.router")
                
                VStack(alignment: .leading, content: {
                    Text("High Speed Wi-Fi")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Text("Guests who stayed here recently reported that the property has high-speed internet!")
                        .font(.caption)
                        .foregroundStyle(.gray)
                })
            })
            })
            .padding(12)
            
            Divider()
            
            // Sleep Section
            VStack(alignment: .leading, content: {
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16, content: {
                        ForEach(1..<5) { bedroom in
                            VStack {
                                Image(systemName: "bed.double")
                                
                                Text("Bedroom \(bedroom)")
                            }
                            .frame(width: 132, height: 100)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    })
                }
                .scrollTargetBehavior(.paging)
            })
            .padding()
             
            Divider()
            
            // Map Section
            VStack(alignment: .leading, content: {
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(.rect(cornerRadius: 12))
            })
            .padding()
            
            
        }.ignoresSafeArea()
            .overlay(alignment: .bottom) {
                VStack {
                Divider()
                        .padding(.bottom)
                    
                    HStack {
                        VStack(alignment: .leading) {
                          Text("$500")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                         Text("Total Price")
                                .font(.footnote)
                         Text("Oct 15 - 20")
                                .font(.footnote)
                                .fontWeight(.semibold)
                                .underline()
                        }
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Reserve")
                                .foregroundStyle(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(width: 140, height: 48)
                                .background(.pink)
                                .clipShape(.rect(cornerRadius: 8))
                        })
                    }
                    .padding(.horizontal, 32)
                    
                }
                .background(.white)
            }
    }
}

#Preview {
    ListingDataView()
}
