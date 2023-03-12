//
//  LogInView.swift
//  Shopping
//
//  Created by Malik Em on 10.03.2023.
//

import SwiftUI

struct LogInView: View {
    
    @State private var firstName = ""
    @State private var password = ""
    @State private var logInBtnPressed = false
    
    var body: some View {
        VStack(spacing: 89) {
            Text("Welcome Back")
                .font(Font.custom("Montserrat", size: 30))
                .bold()
            
            VStack(spacing: 35){
                TextField("First Name", text: $firstName)
                    .padding(.all, 8)
                    .background(Color.gray.opacity(0.3).cornerRadius(32))
                    .font(.body)
                
                SecureField("Password", text: $password)
                    .padding(.all, 8)
                    .background(Color.gray.opacity(0.3).cornerRadius(32))
                    .font(.body)
                    .background(Image(systemName: "eye.slash").padding(.leading, 300).foregroundColor(.gray))
            }
            
            Button(action: {
                self.logInBtnPressed.toggle()
                let users = User.loadUsers()
               
                for user in users {
                    if self.firstName == user.firstName {
                        print("true")
                        break
                    } else {
                        print("false")
                    }
                }
            }) {
                Text("Login")
            } .padding()
                .frame(maxWidth: .infinity)
                .background(Color(#colorLiteral(red: 0.3058823529, green: 0.3333333333, blue: 0.8431372549, alpha: 1)).cornerRadius(20))
                .foregroundColor(.white)
                .font(.headline)
        }.padding(.horizontal, 43)
            .multilineTextAlignment(.center)
    }
}

struct LogInView_Previews: PreviewProvider {
    static var previews: some View {
        LogInView()
    }
}
