//
//  ChatView.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 25/3/2023.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        VStack {
            ZStack{
                Rectangle()
                    .foregroundColor(.black)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 10)
                Text("Message")
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                    .padding(.all)
        
                
            }
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
