//
//  chatUI.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//

import SwiftUI

struct chatUI: View {
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


struct chatUI_Previews: PreviewProvider {
    static var previews: some View {
        chatUI()
    }
}
