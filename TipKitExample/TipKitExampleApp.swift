//
//  TipKitExampleApp.swift
//  TipKitExample
//
//  Created by Fatih Durmaz on 25.12.2023.
//

import SwiftUI
import TipKit

@main
struct TipKitExampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    
                    try? Tips.resetDatastore()
                    
                    try? Tips.configure([
                        .displayFrequency(.immediate),
                        .datastoreLocation(.applicationDefault)
                    ])
                }
        }
    }
}
