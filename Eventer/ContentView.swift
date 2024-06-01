//
//  ContentView.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftUI
import SwiftData
import SwiftDate

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var dayItems: [DayItem]

    var body: some View {
        List {
            ForEach(dayItems) { dayItem in
                NavigationLink {
                    DayPage(dayItem: dayItem)
                } label: {
                    VStack {
                        HStack {
                            Image(systemName: dayItem.iconSystemName)
                            Text(dayItem.title)
                        }
                        
                        Text(dayItem.date.toString(.date(.medium)))
                    }
                }
            }
        }
    }
}

struct DayPage: View {
    var dayItem: DayItem
    var body: some View {
        Form {
            
        }
    }
}
#Preview {
    PreviewView()
}
