//
//  loginPage.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//

import SwiftUI

struct loginPage: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggingIn: Bool = false
    
    var body: some View {
        VStack {
            Text("Log in")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 60)
                .frame(width: 400, alignment: .leading)
            
            Text("Email Address")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            
            
            TextField("Email", text: $email)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
                .padding(.bottom, 5)
            
            Text("Password")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, -12)
            
            
            SecureField("Password", text: $password)
                .padding()
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(width: 400, height: 75)
                .shadow(radius: 2)
            
            
            Text("Forgot password?")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom, 25)
                .padding(.top, -12) 
            
            
            Button {
            } label: {
                Text("Login")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .frame(width: 400, height: 60)
            .background(Color.black)
            .cornerRadius(5.0)
            .shadow(radius: 2)
            
            Text("Don't you have an account?")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom,50)
            
            
            Text("Or login with")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 50)
            
            
            HStack{
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("googleLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(width: 120, height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.horizontal, 6)
                
                Button(action: {
                    // Handle Facebook authentication
                }) {
                    Image("facebookLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                }
                .padding(.horizontal, 8)
                .frame(width: 120, height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.horizontal, 6)
                
                Button(action: {
                    // Handle Apple authentication
                }) {
                    Image("appleLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .padding(.horizontal, 8)
                .frame(width: 120, height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.horizontal, 6)
            }
            .padding(.bottom, 20)
            
        }
    }
    
    struct loginPage_Previews: PreviewProvider {
        static var previews: some View {
            loginPage()
        }
    }
}
