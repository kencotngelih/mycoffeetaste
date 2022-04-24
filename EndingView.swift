//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 24/04/22.
//

import SwiftUI

struct EndingView: View {
    
    @EnvironmentObject private var viewRouter: ViewRouter
    
    var imageEnd1 = ""
    var textEnd1 = ""
    var textEnd2 = ""
    var textEnd3 = ""
    var textEnd4 = ""
    var body: some View {
        Spacer()
        Image(imageEnd1)
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            //.padding(.bottom, 25)
        
        Spacer()
        Text(textEnd1)
            .font(.title)
            .bold()
            .frame(width: 700, height: 200)
            .foregroundColor(Color("white"))
            .multilineTextAlignment(.center)
            .padding(25)
            .background(Color("darkgray"))
            .cornerRadius(30)
            .shadow(radius: 10)
            .padding(.bottom, 25)
        
        Spacer()
        Text(textEnd2)
            .font(.title)
            .bold()
            .foregroundColor(Color("black"))
            .multilineTextAlignment(.center)
        Text(textEnd3)
            .font(.body)
            .bold()
            .foregroundColor(Color("black"))
            .multilineTextAlignment(.center)
        Spacer()
        Button(action: {
            viewRouter.currentView = .welcome
        }, label: {
            Text(textEnd4)
                .font(.title)
                .bold()
                .foregroundColor(Color("white"))
                .frame(width:700)
                .padding(25)
                .padding(.horizontal, 25)
                .background(
                    Color.blue
                        .cornerRadius(30)
                        .shadow(radius: 10)
                )
                .shadow(radius: 10)
        })
    }
}
