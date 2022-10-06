import SwiftUI

struct ContentView: View {
   @State var num = 0

   func decrement() {
      if num == 0 {

      } else {
         num -= 1
      }
   }

   var body: some View {
      VStack(spacing:30) {
         Image("corgi")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width:100, height: 100)
            .clipShape(Circle())
         Text(String(num)).font(.system(size: 50))
         HStack(spacing:30) {
            Button("Increment") {
               num += 1
            }
            Button("Decrement") {
               decrement()
            }
         }
         .padding()
      }
   }
}
