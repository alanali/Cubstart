//
//  ContentView.swift
//  Shopping List
//
//  Created by Tony Hong on 3/11/22.
//

import SwiftUI

class Items: Identifiable {
   let name: String
   let image: String
   let quantity: Int
   init(imageName: String, itemName: String, quantity: Int) {
      self.name = itemName
      self.image = imageName
      self.quantity = quantity
   }
}

struct ContentView: View {
   var food = [
      Items(imageName: "mango", itemName: "Mangoes", quantity: 10),
      Items(imageName: "pear", itemName: "Pears", quantity: 5),
      Items(imageName: "egg", itemName: "Eggs", quantity: 12)
   ]
   var baked = [
      Items(imageName: "cake", itemName: "Cake", quantity: 1),
      Items(imageName: "cupcake", itemName: "Cupcakes", quantity: 12)
   ]
   var other =  [
      Items(imageName: "razor", itemName: "Razor", quantity: 1),
      Items(imageName: "detergent", itemName: "Detergent", quantity: 1)
   ]
   var body: some View {
      NavigationView {
         List {
            Section(header: Text("Fruits")) {
               ForEach(food) { f in
                  CustomCell(imageName: f.image, itemName: f.name, quantity: f.quantity)
               }
            }
            Section(header: Text("Bakery")) {
               ForEach(baked) { f in
                  CustomCell(imageName: f.image, itemName: f.name, quantity: f.quantity)
               }
            }
            Section(header: Text("Household")) {
               ForEach(other) { f in
                  CustomCell(imageName: f.image, itemName: f.name, quantity: f.quantity)
               }
            }
         }.navigationTitle("Shopping List")
      }
   }
}
