//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EspA100R0: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEspA100R0: Color = Color("lightgray")
    
    //tahapan
    @State var counter = 1
    
    //long gesture press
    @State var isComplete: Bool = false
    @State var isSuccess: Bool = false
    
    var stepInformation: some View {
        Group {
            Text("How To Make Espresso")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
                .padding(.top, 50)
                       
            if ( counter == 1 ) {
                Text("To create 1 shot Espresso (30ml). We need 20 grams of coffee powder and 60ml hot water (90 degree Celcius). Why 20 grams ? Because there is a rule among coffee makers: ratio between coffee powder and output espresso is 1:1.5 . Then in this Espresso, we need 20 grams of Arabica.\n\nWe also need some equipment, for example : A Rokpresso and a Portafilter (to extract coffee powder become Espresso), Scales (to make sure the quantities are correct), Spoons (to add coffee power to portafilter), and an Espresso Glass (to keep the espresso).")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .frame(width:700)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
                    addButtonEspA100R0GoTo1()
            }
            else if ( counter == 2) {
                Text("Step 1\nAdd 20 grams of Arabica to Portafilter.")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .frame(width:700, height:50)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
            }else if ( counter == 3) {
                Text("Step 2\nPut the Portafilter to the Rokpresso and prepare an Espresso Glass below it.")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .frame(width:700, height:50)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
            }else if ( counter == 4) {
                Text("Step 3\nAdd 60ml How Water to the Rokpresso.")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .frame(width:700, height:50)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
            }else {
                Text("Step 4\nHold the button for 3 seconds to get The Espresso.")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("white"))
                    .multilineTextAlignment(.center)
                    .frame(width:700, height:50)
                    .padding(25)
                    .background(Color("darkgray"))
                    .cornerRadius(30)
                    .shadow(radius: 10)
                    .padding(.leading, 75)
                    .padding(.trailing, 75)
                    .padding(.bottom, 25)
            }
            Spacer()
        }
    }
    
    var componentStep1: some View {
        Group {
            VStack {
                
                Text("Ingredients for making Espresso with 100% Arabica")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                
                HStack {

                    Spacer()
                    VStack {
                        Image("resizeCoffeeSpoon4x")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("4 x 5 grams Arabica")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack {
                        Image("resizeHotWater60ml")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("60ml Hot Water")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                        
                    }
                    Spacer()
                }
            }
        }
    }
    
    var componentStep2: some View {
        Group {
            
            HStack {
                Spacer()
                VStack{
                    Image("resizeCoffeeSpoon4x")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    Text("4 x 5 grams Arabica")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA100R0GoTo2()
                }
                Spacer()
                VStack {
                    Image("resizeRokpresso01")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                }
                Spacer()
            }
            
        }
    }
    
    var componentStep3: some View {
        Group {
            
            HStack {
                Spacer()
                VStack{
                    Image("resizeGlassEspresso")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    Text("Espresso Glass")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA100R0GoTo2()
                }
                Spacer()
                VStack {
                    Image("resizeRokpresso02ae")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                }
                Spacer()
            }
            
        }
    }
    
    var componentStep4: some View {
        Group {
            
            HStack {
                Spacer()
                VStack{
                    Image("resizeHotWater60ml")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    Text("60ml Hot Water")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA100R0GoTo2()
                }
                Spacer()
                VStack {
                    Image("resizeRokpresso03")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 400, height: 400)
                }
                Spacer()
            }
            
        }
    }
    
    var componentStep5: some View {
        Group {
            
            VStack {
                Text("Espresso Process Loading Bar")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                
                Rectangle()
                    .fill(isSuccess ? Color.green : Color.blue)
                    .frame(maxWidth: isComplete ? .infinity : 0)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.gray)
                    .padding(.leading, 100)
                    .padding(.trailing, 100)
                    .padding(.bottom, 25)
                
                HStack {
                    VStack {
                        if (isComplete == false) {
                            Text("Press Here")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color("white"))
                                .frame(width:250)
                                .padding(25)
                                .padding(.horizontal, 25)
                                .background(
                                    Color.blue
                                        .cornerRadius(30)
                                        .shadow(radius: 10)
                                )
                                .shadow(radius: 10)
                                .onLongPressGesture(minimumDuration: 3.0, maximumDistance: 50) {
                                    (isPressing) in
                                    //start of press -> min duration
                                    if isPressing {
                                        withAnimation(.easeInOut(duration: 3.0)) {
                                            isComplete.toggle()
                                        }
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            if !isSuccess {
                                                withAnimation(.easeInOut) {
                                                    isComplete = false
                                                }
                                            }
                                        }
                                    }
                                } perform: {
                                    //at the min duration
                                    withAnimation(.easeInOut) {
                                        isSuccess = true
                                    }
                                }
                        } else {
                            Text("Press Here")
                                .font(.title)
                                .bold()
                                .foregroundColor(Color("lightgray"))
                                .frame(width:250)
                                .padding(25)
                                .padding(.horizontal, 25)
                                .background(Color("lightgray"))
                                .cornerRadius(30)
                        }
                        

                        
                        if (isComplete == true) {
                            
                            Button(action: {
                                viewRouter.currentView = .addona100r0
                            }, label: {
                                Text("Pick The Espresso")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color("white"))
                                    .frame(width:250)
                                    .padding(25)
                                    .padding(.horizontal, 25)
                                    .background(
                                        Color.blue
                                            .cornerRadius(30)
                                            .shadow(radius: 10)
                                    )
                                    .shadow(radius: 10)
                            })
                        } else {
                            Button(action: {
                                
                            }, label: {
                                Text("")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(Color("lightgray"))
                                    .frame(width:250)
                                    .padding(25)
                                    .padding(.horizontal, 25)
                                    .background(Color("lightgray"))
                                    .cornerRadius(30)
                        })
                        
                    }
                        
                    }
                    if (isComplete == true) {
                        Image("resizeRokpresso05")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeRokpresso04")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    }
                }
                
                

                

            }
        }
    }
    
    var body: some View {
        
        ZStack {
            backgroundColorEspA100R0
                .ignoresSafeArea(edges: .all)
        
        
        VStack {
            
            stepInformation
            
            if (counter == 1) {
                componentStep1
            }
            else if (counter == 2){
                componentStep2
            } else if (counter == 3){
                componentStep3
            } else if (counter == 4){
                componentStep4
            } else {
                componentStep5
            }
        
            Spacer()

        }
            
        }
        .onAppear{ SoundManager.instance.playSound(sound: .backgroundsound) }
    }
    
    func addButtonEspA100R0GoTo1() -> some View {
        return Button(action: {
            self.counter += 1
        }, label: {
            Text("Next")
                .font(.title)
                .bold()
                .foregroundColor(Color("white"))
                .frame(width:250)
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
    func addButtonEspA100R0GoTo2() -> some View {
        return Button(action: {
            self.counter += 1
        }, label: {
            Text("Add")
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

