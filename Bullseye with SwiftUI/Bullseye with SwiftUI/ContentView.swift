//
//  ContentView.swift
//  Bullseye with SwiftUI
//
//  Created by Tony Hong on 2/17/22.
//

import SwiftUI

struct ContentView: View {
   @State var sliderValue : Float = 0.0
   @State var exactMode : Bool = false
   var body: some View {
      // Scores
      VStack() {
         HStack() {
            VStack() {
               Text("High Score")
               Text("0")
            }
            .padding(.leading, 20)
            Spacer()

            VStack() {
               Text("Current Level")
               Text("1")
            }
            .padding(.trailing, 20)
         }
         .padding(.top, 20)
         Spacer()
      }

      // Directions
      VStack() {
         Text("Move the slider to:")
            .font(.system(size:30))
         Text("25")
            .font(.system(size:30))
         Slider(value: $sliderValue, in: 1...100)

         Button("Check") {

         }
      }
      .padding(.bottom, 200)
      .padding(.leading, 20)
      .padding(.trailing, 20)

      VStack() {
         Text("Exact Mode?")
            .font(.system(size:20))
         Toggle("", isOn: $exactMode).labelsHidden()
      }
      .padding(.bottom, 50)
      .padding(.leading, 20)
      .padding(.trailing, 20)

   }
}
