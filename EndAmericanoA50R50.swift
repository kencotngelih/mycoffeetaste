//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EndAmericanoA50R50: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEndAmericanoA50R50: Color = Color("lightgray")
    
    var body: some View {
        
        ZStack {
            backgroundColorEndAmericanoA50R50
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                //saat ini
                
                EndingView(imageEnd1: "resizeAmericano", textEnd1: "Congratulations !!! ☕️☕️☕️\nYour Americano with 50% Arabica and 50% Robusta is Ready.\nThank You for Playing MY COFFEE TASTE App.\nSee you next time...", textEnd2: "MY COFFEE TASTE is Americano with 50% Arabica and 50% Robusta", textEnd3: "Hint : Order This Coffee on Your Next Visit to Coffee Shop", textEnd4: "Finish. Back to Welcome Screen.")
   
                Spacer()
            }
            
        }.onAppear{ SoundManager.instance.playSound(sound: .soundamericanoa50r50) }
    }
}
