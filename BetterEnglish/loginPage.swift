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
                .padding(.top, 50)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .padding(.bottom, 30)
            
            Text("Email Address")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -10)
                .padding(.bottom, -30)
            
            
            TextField("Email", text: $email)
                .padding(.all)
                .background(Color.white)
                .cornerRadius(5.0)
                .frame(height: 75)
                .shadow(radius: 2)
                .padding(.all, 12.0)
            
            Text("Password")
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
            
            
            Text("Forgot password?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -30)
                .padding(.bottom, 60)
            
            
            Button {
            } label: {
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
            
            Text("Don't you have an account?")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -25)
                .padding(.bottom, 60)
            
            
            Text("Or login with")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 30)
            
            
            HStack{
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("googleLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.leading, 12.0)
                
                Button(action: {
                    // Handle Facebook authentication
                }) {
                    Image("facebookLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                    
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)


                
                Button(action: {
                    // Handle Apple authentication
                }) {
                    Image("appleLogo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 60)
                .background(Color.white)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.trailing, 12.0)

            }
            .padding(.bottom, 100)
            
        }
    }
    
    struct loginPage_Previews: PreviewProvider {
        static var previews: some View {
            loginPage()
        }
    }
}
