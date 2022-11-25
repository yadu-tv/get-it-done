//
//  to_doApp.swift
//  to do
//
//  Created by Yadu Krishnan on 24/07/22.
//

import SwiftUI

@main
struct to_doApp: App {
    
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
