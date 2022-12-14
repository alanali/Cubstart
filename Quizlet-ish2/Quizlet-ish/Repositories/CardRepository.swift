//
//  CardRepository.swift
//  Quizlet-ish
//
//  Created by Alana Li on 11/18/22.
//

import FirebaseFirestore
import FirebaseFirestoreSwift
import Combine

class CardRepository: ObservableObject {
  private let path: String = "cards"
  private let store = Firestore.firestore()
  func add(_ card: Card) {
    do {
      _ = try store.collection(path).addDocument(from: card)
    } catch {
      fatalError("Unable to add card: \(error.localizedDescription).")
    }
     @Published var cards: [Card] = []

     init() {
       get()
     }

     func get() {
       store.collection(path)
         .addSnapshotListener { querySnapshot, error in
           if let error = error {
             print("Error getting cards: \(error.localizedDescription)")
             return
           }

             self.cards = querySnapshot?.documents.compactMap { document in
             try? document.data(as: Card.self)
           } ?? []
         }
     }

     func update(_ card: Card) {
         guard let cardId = card.id else { return }

         do {
           try store.collection(path).document(cardId).setData(from: card)
         } catch {
           fatalError("Unable to update card: \(error.localizedDescription).")
         }
       }
     func remove(_ card: Card) {
         guard let cardId = card.id else { return }

         store.collection(path).document(cardId).delete { error in
           if let error = error {
             print("Unable to remove card: \(error.localizedDescription)")
           }
         }
       }

  }
}

