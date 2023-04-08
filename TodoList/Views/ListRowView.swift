//
//  ListRowView.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

struct ListRowView: View {
   let title: String

   var body: some View {
      HStack {
         Image(systemName: "checkmark.circle")
         Text(title)
         Spacer()
      }
      .navigationTitle("Todo List 📝")
   }
}

struct ListRowView_Previews: PreviewProvider {
   static var previews: some View {
      ListRowView(title: "This is the first title")
   }
}
