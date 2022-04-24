//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct Espresso: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var sliderValue: Double = 0
    @State var color: Color = .red
    
    @State var backgroundColorDashboard: Color = Color("lightgray")
    
    var coffeeBeanImage: some View {
        Group {
            
            HStack {
                if (sliderValue == 0.0) {
                    Image("arabica100")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 140)
                    Spacer()
                    Image("robusta0")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 140)
                }
                else if (sliderValue == 25.0) {
                    Image("arabica75")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 140)
                    Spacer()
                    Image("robusta25")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 140)
                } else if (sliderValue == 50.0) {
                    Image("arabica50")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 140)
                    Spacer()
                    Image("robusta50")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 140)
                } else if (sliderValue == 75.0){
                    Image("arabica25")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 140)
                    Spacer()
                    Image("robusta75")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 140)
                } else {
                    Image("arabica0")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.leading, 140)
                    Spacer()
                    Image("robusta100")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 50)
                        .padding(.trailing, 140)
                }
                
            }
        }
    }
    
    var coffeeBeanSlider: some View {
        Group {
            HStack {
                
                Slider(
                    value: $sliderValue,
                    in: 0...100,
                    step: 25.0,
                    label: {
                        Text("Title")
                    },
                    minimumValueLabel: {
                        Text("Arabica")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("black"))
                    },
                    maximumValueLabel: {
                        Text("Robusta")
                            .font(.largeTitle)
                            .bold()
                            .foregroundColor(Color("black"))
                    }
                )
                .padding(.leading, 100)
                .padding(.trailing, 100)
            }
        }
    }
    
    var coffeeBeanPercent: some View {
        Group {
            HStack {
                if (sliderValue == 0.0) {
                    Text("100 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.leading, 120)
                    Spacer()
                    Text("0 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.trailing, 120)
                }
                else if (sliderValue == 25.0) {
                    Text("75 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.leading, 120)
                    Spacer()
                    Text("25 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.trailing, 120)
                } else if (sliderValue == 50.0) {
                    Text("50 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.leading, 120)
                    Spacer()
                    Text("50 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.trailing, 120)
                } else if (sliderValue == 75.0){
                    Text("25 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.leading, 120)
                    Spacer()
                    Text("75 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.trailing, 120)
                } else {
                    Text("0 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.leading, 120)
                    Spacer()
                    Text("100 %")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                        .padding(.trailing, 120)
                }
                
            }
            .padding(.bottom, 25)
        }
    }
    
    var coffeeBeanChoiceButton: some View {
        Group {
            if (sliderValue == 0.0) {
                Button(action: {
                    viewRouter.currentView = .espa100r0
                }, label: {
                    Text("Let's Create The Espresso with\n100 % Arabica Coffee\n0 % Robusta Coffee")
                        .font(.title)
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
            }
            else if (sliderValue == 25.0) {
                Button(action: {
                        viewRouter.currentView = .espa75r25
                }, label: {
                    Text("Let's Create The Espresso with\n75 % Arabica Coffee\n25 % Robusta Coffee")
                        .font(.title)
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
            } else if (sliderValue == 50.0) {
                Button(action: {
                        viewRouter.currentView = .espa50r50
                }, label: {
                    Text("Let's Create The Espresso with\n50 % Arabica Coffee\n50 % Robusta Coffee")
                        .font(.title)
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
            } else if (sliderValue == 75.0){
                Button(action: {
                        viewRouter.currentView = .espa25r75
                }, label: {
                    Text("Let's Create The Espresso with\n25 % Arabica Coffee\n75 % Robusta Coffee")
                        .font(.title)
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
            } else {
                Button(action: {
                        viewRouter.currentView = .espa0r100
                }, label: {
                    Text("Let's Create The Espresso with\n0 % Arabica Coffee\n100 % Robusta Coffee")
                        .font(.title)
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
            }
        }
    }
    
    var body: some View {
        ZStack {
            backgroundColorDashboard
                .ignoresSafeArea(edges: .all)
            
            VStack {
                Text("There are two types of famous coffee beans, namely Arabica and Robusta. Arabica market share is around 60% and Robusta is almost 40%.\nBoth have different shapes. Arabica has the shape of a coffee bean with a curved pattern, while robusta has a straight pattern.\nThe taste is of course different and we can combine the two flavors to get the taste we like.")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
                
                Text("What Kind of Coffee Taste Do You Like ?")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("black"))
                Text("Hint : Taste of Arabica = Acidity & Taste of Robusta = Bitter")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color("black"))
                Text("Scroll The Slider Bar Below and Push Button to Create The Basic Espresso")
                    .font(.title3)
                    .bold()
                    .foregroundColor(Color("black"))
                    .padding(.bottom, 25)
                
                
                Text("The Coffee Taste That I Like is")
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(Color("black"))
                if (sliderValue == 0.0) {
                    Text("High Acidity, Less Bitter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                }
                else if (sliderValue == 25.0) {
                    Text("High-Med Acidity, Less-Med Bitter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                } else if (sliderValue == 50.0) {
                    Text("Medium Acidity, Medium Bitter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                } else if (sliderValue == 75.0){
                    Text("Med-Low Acidity, Med-Strong Bitter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                } else {
                    Text("Low Acidity, Strong Bitter")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color("black"))
                }
                
                coffeeBeanImage

                coffeeBeanSlider
                
                coffeeBeanPercent
                
                coffeeBeanChoiceButton

            }
        }.onAppear{ SoundManager.instance.playSound(sound: .backgroundsound) }
    }
}
