//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct AddOnA0R100: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    
    @State var backgroundColorAddOnA0R100: Color = Color("lightgray")
    
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
            
            backgroundColorAddOnA0R100
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                Spacer()
                HStack {                //saat ini
                    Image("resizeEspresso")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        //.padding(.bottom, 25)
                    
                    Text("Well Done !!!\nYour Basic Espresso with 100% Robusta is Ready.\nNow, Let's Move On to The Next Step.")
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
                    viewRouter.currentView = .proamericanoa0r100
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
                    viewRouter.currentView = .procafelattea0r100
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
                    viewRouter.currentView = .procappuccinoa0r100
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
                    viewRouter.currentView = .promacchiatoa0r100
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
        .onAppear{ SoundManager.instance.playSound(sound: .soundaddona0r100) }
    }
}
