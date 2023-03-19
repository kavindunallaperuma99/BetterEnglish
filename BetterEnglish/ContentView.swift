//
//  ContentView.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//@MainActor class UIImageView : UIView

import SwiftUI

struct ContentView: View {
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
                    .padding(.top, 400.0)
                    .frame(width: 400, alignment: .leading)
                
            }
                
            Spacer()
            
            Text("Points Eraned")
                .frame(width: 400, alignment: .leading)
                .padding(.bottom,200)
            
            
            Button {
            } label: {
                Text("Learning")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding()
            }
            .frame(width: 400, height: 60)
            .background(Color.black)
            .cornerRadius(5.0)
            .shadow(radius: 2)
            
            
            HStack{
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("callLogoo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(width: 190, height: 60)
                .background(Color.blue)
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.horizontal, 6)
                
                Button(action: {
                    
                    // Handle Google authentication
                }) {
                    Image("msgLogoo")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                .frame(width: 190, height: 60)
                .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.626))
                .cornerRadius(5.0)
                .shadow(radius: 2)
                .padding(.horizontal, 6)
            
            
            
            
            
        }
        
    }
        .edgesIgnoringSafeArea(.top)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
