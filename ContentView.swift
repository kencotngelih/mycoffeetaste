// Image --> drawn by myself using iPad Pro and Apple Pencil. Software ProCreate.
// Audio --> sounds were recorded by myself using Macbook Pro. Software QuickTime Player.
// Background sound (piano) --> played by myself using iPad Pro. Software Piano on iPad Pro.
//
// Please wait for first loading on Playgrounds App on iPad Pro.
// In my calculation, it takes 25-30 seconds.
// Thank you.

import SwiftUI
import AVKit

enum AppView {
    case welcome, espresso, espa0r100, espa25r75, espa50r50, espa75r25, espa100r0, addona0r100, addona25r75, addona50r50, addona75r25, addona100r0, endamericanoa0r100, endamericanoa25r75, endamericanoa50r50, endamericanoa75r25, endamericanoa100r0, endcafelattea0r100, endcafelattea25r75, endcafelattea50r50, endcafelattea75r25, endcafelattea100r0, endcappuccinoa0r100, endcappuccinoa25r75, endcappuccinoa50r50, endcappuccinoa75r25, endcappuccinoa100r0, endmacchiatoa0r100, endmacchiatoa25r75, endmacchiatoa50r50, endmacchiatoa75r25, endmacchiatoa100r0, proamericanoa0r100, proamericanoa25r75, proamericanoa50r50, proamericanoa75r25, proamericanoa100r0, procafelattea0r100, procafelattea25r75, procafelattea50r50, procafelattea75r25, procafelattea100r0, procappuccinoa0r100, procappuccinoa25r75, procappuccinoa50r50, procappuccinoa75r25, procappuccinoa100r0, promacchiatoa0r100, promacchiatoa25r75, promacchiatoa50r50, promacchiatoa75r25, promacchiatoa100r0
}

class SoundManager {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum SoundOption: String {
        case backgroundsound,
             soundaddona100r0, soundaddona75r25, soundaddona50r50, soundaddona25r75, soundaddona0r100,
             soundamericanoa100r0, soundamericanoa75r25, soundamericanoa50r50, soundamericanoa25r75, soundamericanoa0r100,
             soundcappuccinoa100r0, soundcappuccinoa75r25, soundcappuccinoa50r50, soundcappuccinoa25r75, soundcappuccinoa0r100,
             soundcafelattea100r0, soundcafelattea75r25, soundcafelattea50r50, soundcafelattea25r75, soundcafelattea0r100,
             soundmacchiatoa100r0, soundmacchiatoa75r25, soundmacchiatoa50r50, soundmacchiatoa25r75, soundmacchiatoa0r100
    }
    
    func playSound(sound: SoundOption) {
        guard let url = Bundle.main.url(forResource: sound.rawValue, withExtension: ".m4a") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
}

class ViewRouter: ObservableObject {
    // here you can decide which view to show at launch
    @Published var currentView: AppView = .welcome
}

struct ContentView: View {
    
    @EnvironmentObject private var viewRouter: ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.currentView == .welcome {
                Welcome()
            } else if viewRouter.currentView == .espresso {
                Espresso()
            } else if viewRouter.currentView == .espa0r100 {
                EspA0R100()
            } else if viewRouter.currentView == .espa25r75 {
                EspA25R75()
            } else if viewRouter.currentView == .espa50r50 {
                EspA50R50()
            } else if viewRouter.currentView == .espa75r25 {
                EspA75R25()
            } else if viewRouter.currentView == .espa100r0 {
                EspA100R0()
            } else if viewRouter.currentView == .addona0r100 {
                AddOnA0R100()
            } else if viewRouter.currentView == .proamericanoa0r100 {
                ProAmericanoA0R100()
            } else if viewRouter.currentView == .procappuccinoa0r100 {
                ProCappuccinoA0R100()
            } else if viewRouter.currentView == .procafelattea0r100 {
                ProCafeLatteA0R100()
            } else if viewRouter.currentView == .promacchiatoa0r100 {
                ProMacchiatoA0R100()
            } else if viewRouter.currentView == .endamericanoa0r100 {
                EndAmericanoA0R100()
            } else if viewRouter.currentView == .endcappuccinoa0r100 {
                EndCappuccinoA0R100()
            } else if viewRouter.currentView == .endcafelattea0r100 {
                EndCafeLatteA0R100()
            } else if viewRouter.currentView == .endmacchiatoa0r100 {
                EndMacchiatoA0R100()
            } else if viewRouter.currentView == .addona25r75 {
                AddOnA25R75()
            } else if viewRouter.currentView == .proamericanoa25r75 {
                ProAmericanoA25R75()
            } else if viewRouter.currentView == .procappuccinoa25r75 {
                ProCappuccinoA25R75()
            } else if viewRouter.currentView == .procafelattea25r75 {
                ProCafeLatteA25R75()
            } else if viewRouter.currentView == .promacchiatoa25r75 {
                ProMacchiatoA25R75()
            } else if viewRouter.currentView == .endamericanoa25r75 {
                EndAmericanoA25R75()
            } else if viewRouter.currentView == .endcappuccinoa25r75 {
                EndCappuccinoA25R75()
            } else if viewRouter.currentView == .endcafelattea25r75 {
                EndCafeLatteA25R75()
            } else if viewRouter.currentView == .endmacchiatoa25r75 {
                EndMacchiatoA25R75()
            } else if viewRouter.currentView == .addona50r50 {
                AddOnA50R50()
            } else if viewRouter.currentView == .proamericanoa50r50 {
                ProAmericanoA50R50()
            } else if viewRouter.currentView == .procappuccinoa50r50 {
                ProCappuccinoA50R50()
            } else if viewRouter.currentView == .procafelattea50r50 {
                ProCafeLatteA50R50()
            } else if viewRouter.currentView == .promacchiatoa50r50 {
                ProMacchiatoA50R50()
            } else if viewRouter.currentView == .endamericanoa50r50 {
                EndAmericanoA50R50()
            } else if viewRouter.currentView == .endcappuccinoa50r50 {
                EndCappuccinoA50R50()
            } else if viewRouter.currentView == .endcafelattea50r50 {
                EndCafeLatteA50R50()
            } else if viewRouter.currentView == .endmacchiatoa50r50 {
                EndMacchiatoA50R50()
            } else if viewRouter.currentView == .addona75r25 {
                AddOnA75R25()
            } else if viewRouter.currentView == .proamericanoa75r25 {
                ProAmericanoA75R25()
            } else if viewRouter.currentView == .procappuccinoa75r25 {
                ProCappuccinoA75R25()
            } else if viewRouter.currentView == .procafelattea75r25 {
                ProCafeLatteA75R25()
            } else if viewRouter.currentView == .promacchiatoa75r25 {
                ProMacchiatoA75R25()
            } else if viewRouter.currentView == .endamericanoa75r25 {
                EndAmericanoA75R25()
            } else if viewRouter.currentView == .endcappuccinoa75r25 {
                EndCappuccinoA75R25()
            } else if viewRouter.currentView == .endcafelattea75r25 {
                EndCafeLatteA75R25()
            } else if viewRouter.currentView == .endmacchiatoa75r25 {
                EndMacchiatoA75R25()
            } else if viewRouter.currentView == .addona100r0 {
                AddOnA100R0()
            } else if viewRouter.currentView == .proamericanoa100r0 {
                ProAmericanoA100R0()
            } else if viewRouter.currentView == .procappuccinoa100r0 {
                ProCappuccinoA100R0()
            } else if viewRouter.currentView == .procafelattea100r0 {
                ProCafeLatteA100R0()
            } else if viewRouter.currentView == .promacchiatoa100r0 {
                ProMacchiatoA100R0()
            } else if viewRouter.currentView == .endamericanoa100r0 {
                EndAmericanoA100R0()
            } else if viewRouter.currentView == .endcappuccinoa100r0 {
                EndCappuccinoA100R0()
            } else if viewRouter.currentView == .endcafelattea100r0 {
                EndCafeLatteA100R0()
            } else if viewRouter.currentView == .endmacchiatoa100r0 {
                EndMacchiatoA100R0()
            }
        }
    }
}
