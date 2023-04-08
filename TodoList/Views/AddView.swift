//
//  AddView.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

struct AddView: View {
   @State var textFieldText: String = ""

   var body: some View {
      ScrollView {
         VStack {
            TextField("Type something here...", text: $textFieldText)
               .padding()
               .background(Color(.systemGray6))
               .cornerRadius(8)

            Button(action: {}, label: {
               Text("Save".uppercased())
                  .font(.headline)
                  .foregroundColor(.white)
                  .padding()
                  .frame(maxWidth: .infinity)
                  .background(Color.blue)
                  .cornerRadius(8)
            })
         }
         .padding()
      }
      .navigationTitle("Add an Item 🖊️")
   }
}

struct AddView_Previews: PreviewProvider {
   static var previews: some View {
      NavigationView {
         AddView()
      }
   }
}
