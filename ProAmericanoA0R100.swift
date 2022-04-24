//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct ProAmericanoA0R100: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorProAmericanoA0R100: Color = Color("lightgray")
    
    //tahapan
    @State var counter = 0
    
    //long gesture press
    @State var isEspComplete: Bool = false
    @State var isEspSuccess: Bool = false
    
    @State var isHotWaterComplete: Bool = false
    @State var isHotWaterSuccess: Bool = false
    
    var stepInformation: some View {
        Group {
            Text("How To Make Americano")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
                .padding(.top, 50)

            if ( counter == 0 ) {
                Text("To create an americano, you will need two ingredients : espresso and hot water. In americano, the ratio among them is NOT equal. 1/4 of Espresso and 3/4 of Hot Water.\n\nFor the equipment, we need an empty glass for serving.")
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
                    addButtonAmericanoA0R100GoTo1()
            } else if ( counter == 1) {
                    Text("Step 1:\nAdd espresso to the glass.")
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
                Text("Step 2\nAdd hot water on top of it.")
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

                Text("Ingredients for making Americano with 100% Robusta")
                    .font(.body)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                    .padding(25)

                HStack {
                    Spacer()
                    VStack{
                        Image("resizeEspresso")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("30ml Espresso")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack {
                        Image("resizeHotWater90ml")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("90ml Hot Water")
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
            
            VStack {
                Text("Americano Process Loading Bar")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                
                HStack {
                    VStack {
                        
                        Rectangle()
                            .fill(isEspSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isEspComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 100)
                            .padding(.trailing, 25)
                        
                    Text("Espresso")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 100)
                        .padding(.trailing, 25)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isHotWaterSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isHotWaterComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                        Text("Hot Water")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                    }
                }
                
                HStack {
                    VStack {
                        
                        if (isEspComplete == false ) {
                            Image("resizeEspresso")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .padding(.top, 25)
                        } else {
                            Image(systemName: "checkmark.square.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .padding(.top, 25)
                                .foregroundColor(.green)
                        }
                            
                            Text("30ml Espresso")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color("black"))
                                .multilineTextAlignment(.center)
                        
                        
                        if (isEspComplete == false) {
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
                                .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
                                    (isPressing) in
                                    //start of press -> min duration
                                    if isPressing {
                                        withAnimation(.easeInOut(duration: 1.0)) {
                                            isEspComplete.toggle()
                                        }
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            if !isEspSuccess {
                                                withAnimation(.easeInOut) {
                                                    isEspComplete = false
                                                }
                                            }
                                        }
                                    }
                                } perform: {
                                    //at the min duration
                                    withAnimation(.easeInOut) {
                                        isEspSuccess = true
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
                        

                        
                        if (isEspComplete == true) {
                            
                            addButtonAmericanoA0R100GoTo1()
                            
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
                    if (isEspComplete == true) {
                        Image("resizeAmericano01")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeGlassAmericano")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    }
                }
            }
        }

    }
    
    var componentStep2: some View {
        Group {
            
            VStack {
                Text("Americano Process Loading Bar")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("black"))
                    .multilineTextAlignment(.center)
                
                HStack {
                    VStack {
                        
                        Rectangle()
                            .fill(isEspSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isEspComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 100)
                            .padding(.trailing, 25)
                        
                    Text("Espresso")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 100)
                        .padding(.trailing, 25)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isHotWaterSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isHotWaterComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                        Text("Hot Water")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                    }
                }
                
                HStack {
                    VStack {
                        
                        if (isHotWaterComplete == false ) {
                            Image("resizeHotWater90ml")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .padding(.top, 25)
                        } else {
                            Image(systemName: "checkmark.square.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .padding(.top, 25)
                                .foregroundColor(.green)
                        }
                            Text("90ml Hot Water")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color("black"))
                                .multilineTextAlignment(.center)
                        
                        
                        if (isHotWaterComplete == false) {
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
                                .onLongPressGesture(minimumDuration: 1.0, maximumDistance: 50) {
                                    (isPressing) in
                                    //start of press -> min duration
                                    if isPressing {
                                        withAnimation(.easeInOut(duration: 1.0)) {
                                            isHotWaterComplete.toggle()
                                        }
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            if !isHotWaterSuccess {
                                                withAnimation(.easeInOut) {
                                                    isHotWaterComplete = false
                                                }
                                            }
                                        }
                                    }
                                } perform: {
                                    //at the min duration
                                    withAnimation(.easeInOut) {
                                        isHotWaterSuccess = true
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
                        

                        
                        if (isHotWaterComplete == true) {
                            
                            Button(action: {
                                viewRouter.currentView = .endamericanoa0r100
                            }, label: {
                                Text("Pick The Americano")
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
                    if (isHotWaterComplete == true) {
                        Image("resizeAmericano")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeAmericano01")
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
            backgroundColorProAmericanoA0R100
                .ignoresSafeArea(edges: .all)
        
        
        VStack {
            
            stepInformation
            
            if (counter == 0) {
                componentStep0
            } else if (counter == 1){
                componentStep1
            } else {
                componentStep2
            }
        
            Spacer()

        }
            
        }
        .onAppear{ SoundManager.instance.playSound(sound: .backgroundsound) }
    }
    
    func addButtonAmericanoA0R100GoTo1() -> some View {
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
}

