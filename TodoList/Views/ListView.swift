//
//  ListView.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

struct ListView: View {
   @State var items: [ItemModel] = [
      ItemModel(title: "Buy Milk", isCompleted: true),
      ItemModel(title: "Buy Eggs", isCompleted: false),
      ItemModel(title: "Buy Bread", isCompleted: true),
      ItemModel(title: "Buy Butter", isCompleted: false),
   ]

   var body: some View {
      List {
         ForEach(items) { item in
            ListRowView(item: item)
         }
      }
      .listStyle(DefaultListStyle())
      .navigationTitle("Todo List 📝")
      .navigationBarItems(
         leading: EditButton(),
         trailing:
         NavigationLink(
            "Add",
            destination: AddView()
         )
      )
   }
}

struct ListView_Previews: PreviewProvider {
   static var previews: some View {
      NavigationView {
         ListView()
      }
   }
}
