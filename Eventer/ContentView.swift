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
        NavigationStack {
            List {
                ForEach(dayItems) { dayItem in
                    NavigationLink {
                        DayPage(dayItem: dayItem)
                    } label: {
                        HStack {
                            Image(systemName: dayItem.iconSystemName)
                                .font(.title)
                            VStack {
                                HStack {
                                    Text(dayItem.title)
                                }
                                
                                Text(dayItem.date.toString(.date(.medium)))
                                    .font(.caption)
                                    .fontWeight(.light)
                            }
                            
                        }
                    }
                }
            }
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button {
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.title)
                    }
                }
            }
            .navigationTitle(
                Date.now.formatted(
                    date: .abbreviated,
                    time: .omitted
                )
            )
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
