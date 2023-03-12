//
//  ProfileView.swift
//  Shopping
//
//  Created by Malik Em on 11.03.2023.
//

import SwiftUI

struct ProfileView: View {
    
   
    
    var body: some View {
        NavigationView {
            VStack {
                VStack {
                    Image("photo")
    //                    .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text("Change photo")
                        .foregroundColor(.gray)
                        .font(.footnote)
                    Text("Satria Adhi Pradana")
                        .padding()
                        .font(Font.custom("Motserrat", size: 20))
                        .font(.largeTitle)
                }
                Button(action: {
                   
                }) {
                    Text("Upload item")
                } .padding()
                    .frame(maxWidth: .infinity)
                    .background(Image(systemName: "square.and.arrow.up").foregroundColor(.white).padding(.leading, -100))
                    .background(Color(#colorLiteral(red: 0.3058823529, green: 0.3333333333, blue: 0.8431372549, alpha: 1)).cornerRadius(20))
                    .foregroundColor(.white)
                    .font(.body)
                
                VStack {
                    ForEach(0..<8) { item in
                        HStack(spacing: 140) {
                            Circle()
                                .fill(.gray.opacity(0.3))
                                .frame(width: 40, height: 40)
                                .background(Image(systemName: "folder").foregroundColor(.black))
                            Text("Trade store")
                                .padding(.leading, -130)
                                .font(.body)
                            Image("vector")
                                .aspectRatio(contentMode: .fit)
                        }
                    }.font(.body)
                        Image("vector")
                            .aspectRatio(contentMode: .fit)
                    }.padding()
               
                Spacer()
                
            }.padding(.horizontal, 43)
//                .padding(.top, -100)
                .navigationBarTitle("Profile", displayMode: .inline)
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
