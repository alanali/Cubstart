//
//  ContentView.swift
//  Lecture 5
//
//  Created by Alana Li on 10/13/22.
//

import SwiftUI

struct ContentView: View {
   var names = ["Alana", "Jim", "Naim", "Spencer"]
   var body: some View {
      NavigationView {
         List {
            Section() {
               CustomCell(imageName: "airplane", text: "Airplane Mode")

               NavigationLink(destination: Text("Wi-Fi")) {
                  Text("Wi-Fi")

               }
               NavigationLink(destination: Text("Cellular")) {
                  Text("Cellular")

               }
               NavigationLink(destination: Text("Personal Hotspot")) {
                  Text("Personal Hotspot")

               }
            }
            Section() {
               NavigationLink(destination: Text("Notifications")) {
                  Text("Notifications")
               }
               NavigationLink(destination: Text("Sounds & Haptics")) {
                  Text("Sounds & Haptics")

               }
               NavigationLink(destination: Text("Focus")) {
                  Text("Focus")

               }
               NavigationLink(destination: Text("Screen Time")) {
                  Text("Screen Time")

               }
            }
            Section() {
               ForEach(names, id: \.self) { name in
                  Text(name)
               }
            }
         }
         .navigationTitle("Settings")
//         .listStyle(GroupedListStyle())
      }
   }
}

struct ContentView_Previews: PreviewProvider {
   static var previews: some View {
      ContentView()
   }
}
