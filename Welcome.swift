//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

struct Welcome: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State private var timeRemaining = 25
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @Environment(\.scenePhase) var scenePhase
    @State private var isActive = true
    
    @State var backgroundColorWelcome: Color = Color("lightgray")
    
    var skipButtonWelcome: some View {
        Group {
            Button(action: {
                    viewRouter.currentView = .espresso
            }, label: {
                Text("Skip to Find MY COFFEE TASTE")
                    .font(.caption)
                    .bold()
                    .foregroundColor(Color("white"))
                    .padding()
                    .padding(.horizontal, 20)
                    .background(
                        Color("darkgray")
                            .cornerRadius(30)
                            .shadow(radius: 10)
                    )
                    .shadow(radius: 10)
        })
        }
    }
    
    var body: some View {
        
        ZStack {
            backgroundColorWelcome
                .ignoresSafeArea(edges: .all)
        
        VStack {
            
            Spacer()
            
            if (timeRemaining > 23) {
                
                //diganti logo (buat di procreate)
                    Image("resizeIconTitle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                        .padding(.top, 25)
                        .padding(.bottom, 25)
                    
                    Text("Welcome to MY COFFEE TASTE")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0)
                
                Spacer()
            } else if (timeRemaining > 20) {
                
                
                //diganti gambar memoji (buat di procreate)
                Image("resizeWelcome")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 25)
                
                Text("Hello, I am Robby Suliantoro from Indonesia. 🇮🇩🇮🇩🇮🇩")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 100)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
                
                
                Spacer()
                
                skipButtonWelcome
                
            } else if (timeRemaining > 15) {
                
                
                //diganti gambar robby suka kopi (buat di procreate)
                HStack {
                    
                    Image("resizeLove")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    Image("resizeCoffee")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                }
                .padding(.bottom, 25)
                
                Text("I love to drink Cafe Latte ☕️.\nI want to share with you how do I find MY COFFEE TASTE and I hope I could help you find what are your COFFEE TASTE is.")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 200)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
                
                
                Spacer()
                skipButtonWelcome
            } else if (timeRemaining > 10) {
                
                //diganti gambar coffeeshop (buat di procreate)
                HStack {
                    
                    Image("resizeCoffeeShopA")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    Image("resizeCoffeeShopB")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    Image("resizeCoffeeShopC")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                }
                .padding(.bottom, 25)
                
                
                Text("In the last 2-3 years, many Coffee Shops have opened in Indonesia 🇮🇩🇮🇩🇮🇩.\nOne thing that confuses me is even though the menu is the same.\nThe taste is DIFFERENT from each other.")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 200)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                
                Spacer()
                skipButtonWelcome
                
            } else if (timeRemaining > 5) {
                //diganti orang bingung / confused (buat di procreate) dan minuman ABC
                HStack {
                    Image("resizeConfused")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                    Image("resizeCoffeeA")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    Text("OR")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                    Image("resizeCoffeeB")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    Text("OR")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                    Image("resizeCoffeeC")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 150, height: 150)
                    
                }
                .padding(.bottom, 25)
                
                Text("Coffee Shop A's Coffee Taste is Acid Dominant.\nCoffee Shop B's Coffee Taste is Strong Bitter.\nCoffee Shop C's Coffee Taste is Mix Between A and B.")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 200)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                

                
                
                Spacer()
                skipButtonWelcome
            } else if (timeRemaining > 0) {
                
                //diganti arabica & robusta (buat di procreate)
                HStack {
                    Text("ARABICA")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                    Image("arabica100")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("OR")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                    Image("robusta100")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("ROBUSTA")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                }
                .padding(.bottom, 25)
                
                Text("It turns out they use different coffee beans.\nSome use Arabica.\nThere are also those who use Robusta.\nSome also use a mixture of the two.")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 200)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                

                
                
                Spacer()
                skipButtonWelcome
            } else {
                
                //diganti orang tercerahkan eureka (buat di procreate)
                Image("resizeEureka")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 25)
                
                Text("Now with MY COFFEE TASTE,\nwe can determine which coffee beans we like.\nIs that Arabica?\nOr Robusta?\nOr combine the two?")
                    .font(.title)
                    .bold()
                    .frame(width: 700, height: 200)
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                

                
                Spacer()
                
                Button(action: {
                        viewRouter.currentView = .espresso
                }, label: {
                    Text("Let's Find Out Your Coffee Taste 🔎☕️")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("white"))
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        )
                        .shadow(radius: 10)
                })
                
                Spacer()
                
            }
            
        }
        .onReceive(timer) { time in
            guard isActive else { return }
            
            if timeRemaining > 0 {
                timeRemaining -= 1
            }
        }
        .onChange(of: scenePhase) { newPhase in
                if newPhase == .active {
                    isActive = true
                } else {
                    isActive = false
                }
            }
        }
        .onAppear{ SoundManager.instance.playSound(sound: .backgroundsound) }
    }
}
