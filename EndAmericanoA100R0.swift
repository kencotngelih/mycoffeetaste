//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EndAmericanoA100R0: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEndAmericanoA100R0: Color = Color("lightgray")
    
    var body: some View {
        
        ZStack {
            backgroundColorEndAmericanoA100R0
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                //saat ini
                
                EndingView(imageEnd1: "resizeAmericano", textEnd1: "Congratulations !!! ☕️☕️☕️\nYour Americano with 100% Arabica is Ready.\nThank You for Playing MY COFFEE TASTE App.\nSee you next time...", textEnd2: "MY COFFEE TASTE is Americano with 100% Arabica", textEnd3: "Hint : Order This Coffee on Your Next Visit to Coffee Shop", textEnd4: "Finish. Back to Welcome Screen.")
          
                Spacer()
            }
            
        }.onAppear{ SoundManager.instance.playSound(sound: .soundamericanoa100r0) }
    }
}
