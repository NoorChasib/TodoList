//
//  ListRowView.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

struct ListRowView: View {
   let item: ItemModel

   var body: some View {
      HStack {
         Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
            .foregroundColor(item.isCompleted ? .green : .red)
         Text(item.title)
         Spacer()
      }
      .padding(.vertical, 8)
   }
}

struct ListRowView_Previews: PreviewProvider {
   static var item1 =
      ItemModel(title: "This is the first item", isCompleted: false)

   static var item2 =
      ItemModel(title: "This is the second item", isCompleted: true)

   static var previews: some View {
      Group {
         ListRowView(item: item1)
         ListRowView(item: item2)
      }
      .previewLayout(.sizeThatFits)
   }
}
