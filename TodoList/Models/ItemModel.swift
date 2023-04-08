//
//  ItemModel.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import Foundation

struct ItemModel: Identifiable {
   let id: String = UUID().uuidString
   let title: String
   let isCompleted: Bool
}
