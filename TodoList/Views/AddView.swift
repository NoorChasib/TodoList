//
//  AddView.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

struct AddView: View {
   @Environment(\.presentationMode) var presentationMode
   @EnvironmentObject var listViewModel: ListViewModel
   @State var textFieldText: String = ""
   
   @State var alertTitle: String = ""
   @State var showAlert: Bool = false
   
   var body: some View {
      ScrollView {
         VStack {
            TextField("Type something here...", text: $textFieldText)
               .padding()
               .background(Color(.systemGray6))
               .cornerRadius(8)
            
            Button(action: saveButtonPressed, label: {
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
      .alert(
         isPresented: $showAlert,
         content: getAlert)
   }
   
   func saveButtonPressed() {
      if textIsAppropriate() {
         listViewModel.addItem(title: textFieldText)
         presentationMode.wrappedValue.dismiss()
      }
   }
   
   func textIsAppropriate() -> Bool {
      if textFieldText.count < 1 {
         alertTitle = "Please enter some text"
         showAlert.toggle()
         return false
      }
      return true
   }
   
   func getAlert() -> Alert {
      return Alert(title: Text(alertTitle))
   }
}
   
struct AddView_Previews: PreviewProvider {
   static var previews: some View {
      NavigationView {
         AddView()
      }
      .environmentObject(ListViewModel())
   }
}
