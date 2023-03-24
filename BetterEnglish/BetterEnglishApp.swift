//
//  BetterEnglishApp.swift
//  BetterEnglish
//
//  Created by Kavindu Nallaperuma on 18/3/2023.
//

import SwiftUI
import Firebase

@main
struct BetterEnglishApp: App {
    init() {
            FirebaseApp.configure()
        }

    
    var body: some Scene {
        WindowGroup {
            loginPage()
       
        }
    }
}
