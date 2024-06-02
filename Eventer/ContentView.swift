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
    
    @Query(sort: \DDay.currentIndex, animation: .spring) private var ddays: [DDay]
    
    @State private var isPopOverPresented: Bool = false

    @State private var userSelectedCalendarUnits: UserSelectedCalendarUnits = UserSelectedCalendarUnits()

    var body: some View {
        let _ = Self._printChanges()
        
        NavigationStack {
            List {
                ForEach(ddays) { dday in
                    NavigationLink {
                        DayPage(dday: dday)
                    } label: {
                        DayItemListRow(dday: dday, allowedUnits: userSelectedCalendarUnits.units)
                    }
                }
                .onMove { sourceIndice, destinationIndex in
                    customMoveAction(sourceIndice: sourceIndice, destinationIndex: destinationIndex)
                }
                .containerShape(.rect(cornerRadius: 15))
            }
            .listStyle(.inset)
            .toolbar {
                ListToolbarContent(
                    isPopOverPresented: $isPopOverPresented,
                    userSelectedCalendarUnits: userSelectedCalendarUnits
                )
            }
            .task {
                for (index, dayItem) in ddays.enumerated() {
                    dayItem.currentIndex = index
                }
            }
        }
    }
    
    func customMoveAction(sourceIndice: IndexSet, destinationIndex: Int) {
        guard let sourceIndex = sourceIndice.first else { return }
        if sourceIndex == destinationIndex { return }

        let moveTarget = ddays[sourceIndex]
        
        var modifiedDestinationIndex = destinationIndex
        
        if sourceIndex < destinationIndex {
            modifiedDestinationIndex -= 1
        }

        let small = min(sourceIndex, modifiedDestinationIndex)
        let big = max(sourceIndex, modifiedDestinationIndex)
        
        for index in small ... big where index != sourceIndex {
            ddays[index].currentIndex += sourceIndex < modifiedDestinationIndex ? -1 : 1
        }
        
        moveTarget.currentIndex = modifiedDestinationIndex
    }
}

struct ListToolbarContent: ToolbarContent {
    @Binding var isPopOverPresented: Bool
    @Bindable var userSelectedCalendarUnits: UserSelectedCalendarUnits
    
    @ToolbarContentBuilder
    var body: some ToolbarContent {
        ToolbarItem(placement: .navigation) {
            Text(
                Date.now.formatted(
                    date: .abbreviated,
                    time: .omitted
                )
            )
            .bold()
            .font(.title2)
        }
        
        ToolbarItem(placement: .primaryAction) {
            // StoreButton
            NavigationLink {
//                        StorePage()
            } label: {
                Label {
                    
                } icon: {
                    Image(systemName: "storefront")
                }
            }
        }
        
        ToolbarItemGroup(placement: .bottomBar) {
            EditButton()

            Button {
                
            } label: {
                Label {
                    
                } icon: {
                    Image(systemName: "plus")
                }
            }

        }
        ToolbarItem(placement: .status) {
            Button {
                isPopOverPresented.toggle()
            } label: {
                Label(
                    title: { Text("Allowed Units") },
                    icon: {
                        Image(systemName: "deskclock")
                    }
                )
            }
            .popover(isPresented: $isPopOverPresented) {
                VStack {
                    Toggle(isOn: $userSelectedCalendarUnits.days) {
                        Text("Day")
                    }

                    Toggle(isOn: $userSelectedCalendarUnits.hours) {
                        Text("Hour")
                    }

                    Toggle(isOn: $userSelectedCalendarUnits.minutes) {
                        Text("Minute")
                    }

                    Toggle(isOn: $userSelectedCalendarUnits.seconds) {
                        Text("Second")
                    }
                }
                .padding()
                .presentationCompactAdaptation(.popover)
                .presentationBackground(.ultraThinMaterial.opacity(0.5))
            }
        }

    }
}

#Preview {
    PreviewView()
}
