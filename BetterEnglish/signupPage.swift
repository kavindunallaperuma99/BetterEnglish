//
//  signupPage.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//

import SwiftUI

struct signupPage: View {
    
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggingIn: Bool = false
    
    var body: some View {
        VStack {
            Text("Create an account")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 30)

            
            Text("Username")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.bottom, -30)
             
                
            
            TextField("username", text: $email)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(height: 75)
                .shadow(radius: 2)
                .padding(.all, 12.0)
            
            Text("Email Address")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -10)
                .padding(.bottom, -30)

            TextField("Enter your email", text: $email)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(height: 75)
                .shadow(radius: 2)
                .padding(.all, 12.0)
            
            Text("Create a password")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -10)
                .padding(.bottom, -30)
            
            SecureField("Password", text: $password)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(height: 75)
                .shadow(radius: 2)
                .padding(.all, 12.0)
            
            Text("Confirm your password")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -10)
                .padding(.bottom, -30)
            
            
            SecureField("Enter your password again", text: $password)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(height: 75)
                .shadow(radius: 2)
                .padding(.all, 12.0)
                .padding(.bottom, 50)
            
            
            
            
            Button(action: {
                // action to perform when button is pressed
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.black)
            .cornerRadius(5.0)
            .shadow(radius: 2)
            .padding(.all, 12.0)
          
        }
    }
}

struct signupPage_Previews: PreviewProvider {
    static var previews: some View {
        signupPage()
    }
}
