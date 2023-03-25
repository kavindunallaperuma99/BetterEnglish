//
//  HomeView.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 25/3/2023.
//

import SwiftUI

struct HomeView: View {
    @State var email: String = ""
    @State var password: String = ""
    @State var isLoggingIn: Bool = false
    
    
    var body: some View {
        
        VStack {
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                Text("Hello, @username")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.all, 12.0)
                    .padding(.top, 330)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                
            }
            
            Spacer()
            
            Text("Points Eraned")
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.all, 12.0)
                .padding(.top, -10)
                .padding(.bottom, 100)
            
            
            Button {
            } label: {
                Text("Learning")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .background(Color.black)
            .cornerRadius(5.0)
            .shadow(radius: 2)
            .padding(.all, 12.0)
            .padding(.bottom, -15.0)
            
            
            HStack{
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("callLogoo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 60)
                .background(Color.black)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding([.top, .leading, .bottom], 12.0)
                
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("msgLogoo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .frame(height: 60)
                .background(Color.black)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding([.top, .bottom, .trailing], 12.0)
                
                
                
            }
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
