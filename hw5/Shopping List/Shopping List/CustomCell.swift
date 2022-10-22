//
//  CustomCell.swift
//  Shopping List
//
//  Created by Tony Hong on 3/12/22.
//

import SwiftUI

struct CustomCell: View {
   var imageName: String
   var itemName: String
   var quantity: Int

   var body: some View {
      HStack {
         Image(imageName)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 30, height: 30)
         Text(itemName)
         HStack {
            Text(String(quantity)).frame(maxWidth: .infinity, alignment: .trailing)
         }
      }
   }
}

