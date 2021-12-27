//
//  TodoListApp.swift
//  TodoList
//
//  Created by Tallis Elder on 26/12/2021.
//

import SwiftUI

/*
 MVVM Architechtures
 
 Model - Datapoints
 View - UI
 ModelView - Manages model for view
 
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}

