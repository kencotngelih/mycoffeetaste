//
//  File.swift
//  My Coffee Taste
//
//  Created by Robby Suliantoro on 19/04/22.
//

import SwiftUI

//saat ini
struct ProCafeLatteA0R100: View {
    @EnvironmentObject private var viewRouter: ViewRouter
    
    @State var backgroundColorProCafeLatteA0R100: Color = Color("lightgray")
    
    //tahapan
    @State var counter = 0
    
    //long gesture press
    @State var isEspComplete: Bool = false
    @State var isEspSuccess: Bool = false
    
    @State var isStmMilkComplete: Bool = false
    @State var isStmMilkSuccess: Bool = false
    
    @State var isFoamMilkComplete: Bool = false
    @State var isFoamMilkSuccess: Bool = false
    
    var stepInformation: some View {
        Group {
            Text("How To Make Cafe Latte")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("black"))
                .multilineTextAlignment(.center)
                .padding(.top, 50)
                       
            if ( counter == 0 ) {
                Text("To create a cafe latte, you will need three ingredients : espresso, steam milk, and foam milk. In cafe latte, the ratio among them is NOT equal. 1/6 of Espresso, 4/6 of Steam Milk, and 1/6 of Foam Milk.\n\nFor the equipment, we need an empty glass for serving.")
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
                addButtonCafeLatteA0R100GoTo1()
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
            }else if ( counter == 2) {
                Text("Step 2\nAdd steam milk on top of it.")
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
                Text("Step 3\nAdd foam milk on top of them.")
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
                
                Text("Ingredients for making Cafe Latte with 100% Robusta")
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
                        Image("resizeSteamMilk120ml")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("120ml Steam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    Spacer()
                    VStack {
                        Image("resizeFoamMilk30ml")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 200, height: 200)
                        Text("30ml Foam Milk")
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
                Text("Cafe Latte Process Loading Bar")
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
                        
                    Text("Espresso")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 100)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isStmMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isStmMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Text("Steam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isFoamMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isFoamMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.trailing, 100)
                        Text("Foam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
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
                            
                            addButtonCafeLatteA0R100GoTo1()
                            
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
                        Image("resizeCafeLatte01")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeGlassCafeLatte")
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
                Text("Cafe Latte Process Loading Bar")
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
                        
                    Text("Espresso")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 100)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isStmMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isStmMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Text("Steam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isFoamMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isFoamMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.trailing, 100)
                        Text("Foam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 100)
                    }
                }
                
                HStack {
                    VStack {
                        
                        if (isStmMilkComplete == false ) {
                            Image("resizeSteamMilk120ml")
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
                            Text("120ml Steam Milk")
                                .font(.body)
                                .bold()
                                .foregroundColor(Color("black"))
                                .multilineTextAlignment(.center)
                        
                        
                        if (isStmMilkComplete == false) {
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
                                .onLongPressGesture(minimumDuration: 2.0, maximumDistance: 50) {
                                    (isPressing) in
                                    //start of press -> min duration
                                    if isPressing {
                                        withAnimation(.easeInOut(duration: 2.0)) {
                                            isStmMilkComplete.toggle()
                                        }
                                    } else {
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                                            if !isStmMilkSuccess {
                                                withAnimation(.easeInOut) {
                                                    isStmMilkComplete = false
                                                }
                                            }
                                        }
                                    }
                                } perform: {
                                    //at the min duration
                                    withAnimation(.easeInOut) {
                                        isStmMilkSuccess = true
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
                        

                        
                        if (isStmMilkComplete == true) {
                            
                            addButtonCafeLatteA0R100GoTo1()

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
                    if (isStmMilkComplete == true) {
                        Image("resizeCafeLatte02")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeCafeLatte01")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    }
                }
            }
            
        }
    }
    
    var componentStep3: some View {
        Group {
            
            VStack {
                Text("Cafe Latte Process Loading Bar")
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
                        
                    Text("Espresso")
                        .font(.body)
                        .bold()
                        .foregroundColor(Color("black"))
                        .multilineTextAlignment(.center)
                        .padding(.leading, 100)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isStmMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isStmMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.leading, 25)
                            .padding(.trailing, 25)
                        Text("Steam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                    }
                    VStack {
                        
                        Rectangle()
                            .fill(isFoamMilkSuccess ? Color.green : Color.blue)
                            .frame(maxWidth: isFoamMilkComplete ? .infinity : 0)
                            .frame(height: 55)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                            .padding(.trailing, 100)
                        Text("Foam Milk")
                            .font(.body)
                            .bold()
                            .foregroundColor(Color("black"))
                            .multilineTextAlignment(.center)
                            .padding(.trailing, 100)
                    }
                }
                
                HStack {
                    VStack {
                        
                        if (isFoamMilkComplete == false ) {
                            Image("resizeFoamMilk30ml")
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
                            Text("30ml Foam Milk")
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
                                viewRouter.currentView = .endcafelattea0r100
                            }, label: {
                                Text("Pick The Cafe Latte")
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
                        Image("resizeCafeLatte")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 400)
                            .padding(.bottom,25)
                    } else {
                        Image("resizeCafeLatte02")
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
            backgroundColorProCafeLatteA0R100
                .ignoresSafeArea(edges: .all)
        
        
        VStack {
            
            stepInformation
            
            if (counter == 0) {
                componentStep0
            } else if (counter == 1){
                componentStep1
            } else if (counter == 2){
                componentStep2
            } else {
                componentStep3
            }
        
            Spacer()

        }
            
        }
        .onAppear{ SoundManager.instance.playSound(sound: .backgroundsound) }
    }
    
    func addButtonCafeLatteA0R100GoTo1() -> some View {
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

