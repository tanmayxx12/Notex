//
//  NotexApp.swift
//  Notex
//
//  Created by Tanmay . on 25/02/25.
//

import SwiftUI

@main
struct NotexApp: App {
    @StateObject var viewModel = NotesViewModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(viewModel)
        }
    }
}
