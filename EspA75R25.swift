//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct EspA75R25: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorEspA75R25: Color = Color("lightgray")
    
    //tahapan
    @State var counter = 0
    
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
                       
            if ( counter == 0 ) {
                Text("To create 1 shot Espresso (30ml). We need 20 grams of coffee powder and 60ml hot water (90 degree Celcius). Why 20 grams ? Because there is a rule among coffee makers: ratio between coffee powder and output espresso is 1:1.5 . Then in this Espresso, we need 15 grams of Arabica dan 5 grams of Robusta.\n\nWe also need some equipment, for example : A Rokpresso and a Portafilter (to extract coffee powder become Espresso), Scales (to make sure the quantities are correct), Spoons (to add coffee power to portafilter), and an Espresso Glass (to keep the espresso).")
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
                    addButtonEspA75R25GoTo1()
            } else if ( counter == 1) {
                    Text("Step 1:\nAdd 15 grams of Arabica to Portafilter.")
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
            }else if ( counter == 2) {
                Text("Step 2\nAdd 5 grams of Robusta to Portafilter.")
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
                Text("Step 3\nPut the Portafilter to the Rokpresso and prepare an Espresso Glass below it.")
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
                Text("Step 4\nAdd 60ml How Water to the Rokpresso.")
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
                Text("Step 5\nHold the button for 3 seconds to get The Espresso.")
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
    
    var componentStep0: some View {
        Group {
            VStack {
                
                Text("Ingredients for making Espresso with 75% Arabica and 25% Robusta")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                    .padding(25)
                
                HStack {
                    Spacer()
                    VStack{
                        Image("resizeCoffeeSpoon3x")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("3 x 5 grams Arabica")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack {
                        Image("resizeCoffeeSpoon1x")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("1 x 5 grams Robusta")
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
    
    var componentStep1: some View {
        Group {
            
            HStack {
                Spacer()
                VStack{
                    Image("resizeCoffeeSpoon3x")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("3 x 5 grams Arabica")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA75R25GoTo2()
                    Image("resizeCoffeeSpoon1x")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    Text("1 x 5 grams Robusta")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA75R25GoTo3()
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
    
    var componentStep2: some View {
        Group {
            
            HStack {
                Spacer()
                VStack{
                    Image("resizeCoffeeSpoon3x")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                    Text("3 x 5 grams Arabica")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA75R25GoTo3()
                    Image("resizeCoffeeSpoon1x")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                        .padding(.top, 25)
                    Text("1 x 5 grams Robusta")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                    addButtonEspA75R25GoTo2()
                }
                Spacer()
                VStack {
                    Image("resizeRokpresso02b1")
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
                    addButtonEspA75R25GoTo2()
                }
                Spacer()
                VStack {
                    Image("resizeRokpresso02b2")
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
                    addButtonEspA75R25GoTo2()
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
                                viewRouter.currentView = .addona75r25
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
            backgroundColorEspA75R25
                .ignoresSafeArea(edges: .all)
        
        
        VStack {
            
            stepInformation
            
            if (counter == 0) {
                componentStep0
            } else if (counter == 1){
                componentStep1
            } else if (counter == 2){
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
    
    func addButtonEspA75R25GoTo1() -> some View {
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
    func addButtonEspA75R25GoTo2() -> some View {
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
    func addButtonEspA75R25GoTo3() -> some View {
        return Button(action: {
            self.counter += 0
        }, label: {
            Text("")
                .font(.title)
                .bold()
                .foregroundColor(Color("lightgray"))
                .padding()
                .padding(.horizontal, 20)
                .background(
                    Color("lightgray")
                        .cornerRadius(30)
                        //.shadow(radius: 10)
                )
                //.shadow(radius: 10)
                .disabled(true)
        })
    }
}

