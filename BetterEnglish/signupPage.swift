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
        VStack{
            Text("Create an account")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 30)
                .frame(width: 400, alignment: .leading)
            
            Text("Username")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            TextField("username", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
                .padding(.bottom, 5)
            
            Text("Email Address")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            
            
            TextField("Enter your email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
            
             
            
            Text("Create a password")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
            
            Text("Confirm your password")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            
            
            
            
            SecureField("Enter your password again", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
                .padding(.bottom, 30)
            
            
            Button(action: {
                // action to perform when button is pressed
            }) {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .frame(width: 400, height: 60)
            .background(Color.black)
            .cornerRadius(5.0)
            .shadow(radius: 2)
            
        
            
  
          
        }
        

    }

}

struct signupPage_Previews: PreviewProvider {
    static var previews: some View {
        signupPage()
    }
}
