//
//  MentalHealthChatBotApp.swift
//  MentalHealthChatBot
//
//  Created by Paul Ancajima on 7/22/22.
//

import SwiftUI

@main
struct MentalHealthChatBotApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
