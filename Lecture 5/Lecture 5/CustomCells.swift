//
//  CustomCells.swift
//  Lecture 5
//
//  Created by Alana Li on 10/13/22.
//

import SwiftUI

struct CustomCell: View {
   var imageName: String
   var text: String
   @State private var airplane = true
   var body: some View {
      HStack {
         Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 20, height: 20)
         if text == "Airplane Mode" {
            Toggle(text, isOn: $airplane)
         } else {
            Text(text)
         }
      }
   }
}
