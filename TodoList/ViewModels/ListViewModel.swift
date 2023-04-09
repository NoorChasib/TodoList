//
//  ListViewModel.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import Foundation

/*
 CRUD Functions

 Create
 Read
 Update
 Delete
 */

class ListViewModel: ObservableObject {
   @Published var items: [ItemModel] = []

   init() {
      getItems()
   }

   func getItems() {
      let newItems = [
         ItemModel(title: "Buy Milk", isCompleted: true),
         ItemModel(title: "Buy Eggs", isCompleted: false),
         ItemModel(title: "Buy Bread", isCompleted: true),
         ItemModel(title: "Buy Butter", isCompleted: false),
      ]
      items.append(contentsOf: newItems)
   }

   func deleteItem(indexSet: IndexSet) {
      items.remove(atOffsets: indexSet)
   }

   func moveItem(from: IndexSet, to: Int) {
      items.move(fromOffsets: from, toOffset: to)
   }

   func addItem(title: String) {
      let newItem = ItemModel(title: title, isCompleted: false)
      items.append(newItem)
   }

   func updateItem(item: ItemModel) {
      if let index = items.firstIndex(where: { $0.id == item.id }) {
         items[index] = item.updateCompletion()
      }
   }
}
