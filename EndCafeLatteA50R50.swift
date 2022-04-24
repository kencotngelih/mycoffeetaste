//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EndCafeLatteA50R50: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEndCafeLatteA50R50: Color = Color("lightgray")
    
    var body: some View {
        
        ZStack {
            backgroundColorEndCafeLatteA50R50
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                //saat ini
                
                EndingView(imageEnd1: "resizeCafeLatte", textEnd1: "Congratulations !!! ☕️☕️☕️\nYour Cafe Latte with 50% Arabica and 50% Robusta is Ready.\nThank You for Playing MY COFFEE TASTE App.\nSee you next time...", textEnd2: "MY COFFEE TASTE is Cafe Latte with 50% Arabica and 50% Robusta", textEnd3: "Hint : Order This Coffee on Your Next Visit to Coffee Shop", textEnd4: "Finish. Back to Welcome Screen.")
                
                Spacer()
            }
            
        }.onAppear{ SoundManager.instance.playSound(sound: .soundcafelattea50r50) }
    }
}
