//
//  SignInView.swift
//  Shopping
//
//  Created by Malik Em on 10.03.2023.
//

import SwiftUI

struct SignInView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var signInBtnPressed = false
    @State private var logInBtnPressed = false
    
    var body: some View {
        VStack(spacing: 77) {
            Text("Sign in")
                .font(Font.custom("Montserrat", size: 30))
                .bold()
            
            VStack(spacing: 35) {
                TextField("First Name", text: $firstName)
                    .padding(.all, 8)
                    .background(Color.gray.opacity(0.3).cornerRadius(32))
                    .font(.body)
                    
                TextField("Last Name", text: $lastName)
                    .padding(.all, 8)
                    .background(Color.gray.opacity(0.3).cornerRadius(32))
                    .font(.body)
                
                TextField("Email", text: $email)
                    .padding(.all, 8)
                    .background(Color.gray.opacity(0.3).cornerRadius(32))
                    .font(.body)
                
                Button(action: {
                    self.signInBtnPressed.toggle()
                }) {
                    Text("Sign in")
                } .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color(#colorLiteral(red: 0.3058823529, green: 0.3333333333, blue: 0.8431372549, alpha: 1)).cornerRadius(20))
                    .foregroundColor(.white)
                    .font(.headline)
                
                HStack {
                    Text("Already have an account?")
                        .font(.body)
                    Button(action: {
                        self.logInBtnPressed.toggle()
                    }) {
                        Text("Log in")
                            .padding(.leading, -45)
                    }.padding(.horizontal, 65)
                        .sheet(isPresented: $logInBtnPressed) {
                            LogInView()
                        }
                }.padding(.top, -20)
                
            }.padding(.horizontal, 43)
                .multilineTextAlignment(.center)
            
            VStack(spacing: 48) {
                HStack(spacing: 11) {
                    Image("google")
//                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 50.0, height: 50.0)
                    Button(action: {
                        
                    }) {
                        Text("Sign in with Google")
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
                HStack {
                    Image("apple")
//                        .padding()
//                        .resizable()
                        .aspectRatio(contentMode: .fit)
//                        .frame(width: 50.0, height: 50.0)
                    
                    Button(action: {
                        
                    }) {
                        Text("Sign in with Apple")
                            .foregroundColor(.black)
                            .font(.headline)
                    }
                }
            }
            
        }
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
