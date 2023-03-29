//
//  SwiftUILearningApp.swift
//  SwiftUILearning
//
//  Created by mehul on 12/03/2023.
//

import SwiftUI

@main
struct SwiftUILearningApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
