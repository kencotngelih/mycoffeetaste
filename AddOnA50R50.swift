//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct AddOnA50R50: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    
    @State var backgroundColorAddOnA50R50: Color = Color("lightgray")
    
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
            
            backgroundColorAddOnA50R50
                    .ignoresSafeArea(edges: .all)
            
            VStack {
                Spacer()
                HStack {                //saat ini
                    Image("resizeEspresso")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200)
                        //.padding(.bottom, 25)
                    
                    Text("Well Done !!!\nYour Basic Espresso with 50% Arabica and 50% Robusta is Ready.\nNow, Let's Move On to The Next Step.")
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
                    viewRouter.currentView = .proamericanoa50r50
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
                    viewRouter.currentView = .procafelattea50r50
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
                    viewRouter.currentView = .procappuccinoa50r50
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
                    viewRouter.currentView = .promacchiatoa50r50
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
        .onAppear{ SoundManager.instance.playSound(sound: .soundaddona50r50) }
    }
}
