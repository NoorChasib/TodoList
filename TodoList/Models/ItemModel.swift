//
//  ItemModel.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import Foundation

// Immutable struct to represent a todo item

struct ItemModel: Identifiable, Codable {
   let id: String
   let title: String
   let isCompleted: Bool

   init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
      self.id = UUID().uuidString
      self.title = title
      self.isCompleted = isCompleted
   }

   func updateCompletion() -> ItemModel {
      return ItemModel(id: id, title: title, isCompleted: !isCompleted)
   }
}
