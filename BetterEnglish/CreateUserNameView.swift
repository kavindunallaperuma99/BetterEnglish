//
//  CreateUserNameView.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 25/3/2023.
//

import SwiftUI

struct CreateUserNameView: View {
    @State var username : String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Create User Name")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.bottom, 30)
                
                Text("Username")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 12.0)
                    .padding(.bottom, -30)
                
                TextField("Username", text: $username)
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
struct CreateUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUserNameView()
    }
}
