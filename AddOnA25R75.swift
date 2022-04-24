//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

struct AddOnA25R75: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    
    @State var backgroundColorAddOnA25R75: Color = Color("lightgray")
    
    var addIngredients: some View {
        Group {
            Text("To Enhance Your Espresso. You Can Add Some Ingredients.\nWhat Kind of Add On Ingredients Do You Like ?")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text("I will choose...")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
        }
    }
    
    var body: some View {
        
        ZStack {
            
            backgroundColorAddOnA25R75
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                Spacer()
                HStack {                //saat ini
                    Image("resizeEspresso")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        //.padding(.bottom, 25)
                    
                    Text("Well Done !!!\nYour Basic Espresso with 25% Arabica and 75% Robusta is Ready.\nNow, Let's Move On to The Next Step.")
                        .font(.title)
                        .bold()
                        .frame(width: 500, height: 200)
                        .foregroundColor(Color("white"))
                        .multilineTextAlignment(.center)
                        .padding(25)
                        .background(Color("darkgray"))
                        .cornerRadius(30)
                        .shadow(radius: 10)
                    
                }

                Spacer()
                
                addIngredients
                
                Spacer()
                //target ke
                Button(action: {
                    viewRouter.currentView = .proamericanoa25r75
                }, label: {
                    Text("Americano (Espresso + Hot Water)")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("white"))
                        .frame(width:725)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        )
                        .shadow(radius: 10)
                })

                Button(action: {
                    viewRouter.currentView = .procafelattea25r75
                }, label: {
                    Text("Cafe Latte (Espresso + Large Steam Milk + Foam Milk)")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("white"))
                        .frame(width:725)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        )
                        .shadow(radius: 10)
                })
                
                Button(action: {
                    viewRouter.currentView = .procappuccinoa25r75
                }, label: {
                    Text("Cappuccino (Espresso + Steam Milk + Foam Milk)")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("white"))
                        .frame(width:725)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .cornerRadius(30)
                                .shadow(radius: 10)
                        )
                        .shadow(radius: 10)
                })
                
                Button(action: {
                    viewRouter.currentView = .promacchiatoa25r75
                }, label: {
                    Text("Macchiato (Espresso + Litte Foam Milk)")
                        .font(.title)
                        .bold()
                        .foregroundColor(Color("white"))
                        .frame(width:725)
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
        .onAppear{ SoundManager.instance.playSound(sound: .soundaddona25r75) }
    }
}
