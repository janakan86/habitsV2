//
//  HabitsV2App.swift
//  HabitsV2
//
//  Created by K Janakan on 17/5/2022.
//

import SwiftUI

@main
struct HabitsV2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
