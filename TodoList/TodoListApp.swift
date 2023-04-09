//
//  TodoListApp.swift
//  TodoList
//
//  Created by Noor Chasib on 2023-04-08.
//

import SwiftUI

/*
 MVVM Architecture

 Model - data point
 View - UI
 ViewModel - manage Models for View

 */

@main
struct TodoListApp: App {
   @StateObject var listViewModel: ListViewModel = .init()

   var body: some Scene {
      WindowGroup {
         NavigationView {
            ListView()
         }
         .environmentObject(listViewModel)
      }
   }
}
