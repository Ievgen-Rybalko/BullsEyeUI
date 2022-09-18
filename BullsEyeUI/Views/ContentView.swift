//
//  ContentView.swift
//  BullsEyeUI
//
//  Created by Ievgen Rybalko on 16.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    @State private var sliderValue : Double = 50.0
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            VStack {
                VStack {
                    Text("🎯🎯🎯Put the BULLSEYE as close as tou can!")
                        .bold()
                        .kerning(2.0)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4.0)
                        .font(.footnote)
                    
                    Text("\(String(game.target))")
                        .fontWeight(.black)
                        .kerning(-1.0)
                        .font(.largeTitle)
                    
                }
                HStack {
                    Text("1")
                        .fontWeight(.bold)
                    Slider(value: self.$sliderValue, in: 1.0...100.0)
                    Text("100")
                        .fontWeight(.bold)
                }
            }
            Button("Hit me!") {
                print("Hello SWUI")
                self.alertIsVisible = true
            }
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
                let roundedValue : Int = Int(self.sliderValue.rounded())
                Text("The slider value is \(roundedValue).\n" +
                     "You score \(self.game.points(sliderValue: roundedValue)) points this round.")
            }
            
            
           /* Button("Knock-knock") {
                self.jokeIsVisible = true
            }
            .alert("Hello, you!", isPresented: $jokeIsVisible) {
                //Button("Stop!") { }
              } message: {
                //Text("This is my joke pop-up")
              }
            */
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
