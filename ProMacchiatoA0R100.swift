//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct ProMacchiatoA0R100: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorProMacchiatoA0R100: Color = Color("lightgray")
    
    //tahapan
    @State var counter = 0
    
    //long gesture press
    @State var isEspComplete: Bool = false
    @State var isEspSuccess: Bool = false
    
    @State var isFoamMilkComplete: Bool = false
    @State var isFoamMilkSuccess: Bool = false
    
    var stepInformation: some View {
        Group {
            Text("How To Make Macchiato")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
                .padding(.top, 50)
                       
            if ( counter == 0 ) {
                Text("To create a macchiato, you will need two ingredients : espresso and foam milk. In macchiato, the ratio among them is NOT equal. 3/4 of Espresso and 1/4 of Foam Milk.\n\nFor the equipment, we need an empty glass for serving.")
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
                    addButtonMacchiatoA0R100GoTo1()
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
                Text("Step 2\nAdd foam milk on top of it.")
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
                
                Text("Ingredients for making Macchiato with 100% Robusta")
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
                        Image("resizeFoamMilk10ml")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("10ml Foam Milk")
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
                Text("Macchiato Process Loading Bar")
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
                            .fill(isFoamMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isFoamMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                        Text("Foam Milk")
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
                            
                            addButtonMacchiatoA0R100GoTo1()
                            
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
                        Image("resizeEspresso")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeGlassEspresso")
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
                Text("Macchiato Process Loading Bar")
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
                            .fill(isFoamMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isFoamMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 100)
                        Text("Foam Milk")
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
                        
                        if (isFoamMilkComplete == false ) {
                            Image("resizeFoamMilk10ml")
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
                            Text("10ml Foam Milk")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color("black"))
                                .multilineTextAlignment(.center)
                        
                        
                        if (isFoamMilkComplete == false) {
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
                                            isFoamMilkComplete.toggle()
                                        }
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            if !isFoamMilkSuccess {
                                                withAnimation(.easeInOut) {
                                                    isFoamMilkComplete = false
                                                }
                                            }
                                        }
                                    }
                                } perform: {
                                    //at the min duration
                                    withAnimation(.easeInOut) {
                                        isFoamMilkSuccess = true
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
                        

                        
                        if (isFoamMilkComplete == true) {
                            
                            Button(action: {
                                viewRouter.currentView = .endmacchiatoa0r100
                            }, label: {
                                Text("Pick The Macchiato")
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
                    if (isFoamMilkComplete == true) {
                        Image("resizeMacchiato")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeEspresso")
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
            backgroundColorProMacchiatoA0R100
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
    
    func addButtonMacchiatoA0R100GoTo1() -> some View {
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

