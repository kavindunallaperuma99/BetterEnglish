//
//  ForgotPasswordView.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 25/3/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    
    @State var email : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Forgot Password?")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 30)
                
                Text("Email")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.bottom, -30)
                
                TextField("Enter your email", text: $email)
                    .padding(.all)
                    .background(Color.white)
                    .cornerRadius(5.0)
                    .frame(height: 75)
                    .shadow(radius: 2)
                    .padding(.all, 12.0)
                
                Button {
                } label: {
                    Text("Continue")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .background(Color.black)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.all, 12.0)
                .padding(.top, 450.0)
            }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}
