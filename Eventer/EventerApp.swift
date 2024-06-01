//
//  EventerApp.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftUI
import SwiftData

@MainActor
var previewModelContainer: ModelContainer {
    let schema = Schema([
        DayItem.self,
    ])
    
    let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

    let modelContainer = try! ModelContainer(for: schema, configurations: [modelConfiguration])
    
    for sample in DayItem.samples {
        modelContainer.mainContext.insert(sample)
    }
    
    return modelContainer
}

@main
struct EventerApp: App {

    var body: some Scene {
        WindowGroup {
            PreviewView()
        }
    }
}

struct PreviewView: View {
    var body: some View {
        ContentView()
            .modelContainer(previewModelContainer)
    }
}
