//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EndMacchiatoA25R75: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEndMacchiatoA25R75: Color = Color("lightgray")
    
    var body: some View {
        
        ZStack {
            backgroundColorEndMacchiatoA25R75
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                //saat ini
                EndingView(imageEnd1: "resizeMacchiato", textEnd1: "Congratulations !!! ☕️☕️☕️\nYour Macchiato with 25% Arabica and 75% Robusta is Ready.\nThank You for Playing MY COFFEE TASTE App.\nSee you next time...", textEnd2: "MY COFFEE TASTE is Macchiato with 25% Arabica and 75% Robusta", textEnd3: "Hint : Order This Coffee on Your Next Visit to Coffee Shop", textEnd4: "Finish. Back to Welcome Screen.")
                
                Spacer()
            }
            
        }.onAppear{ SoundManager.instance.playSound(sound: .soundmacchiatoa25r75) }
    }
}
