//
//  DayPage.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftUI

//LabeledContent {
//    Text(dayItem.title)
//} label: {
//    Image(systemName: dayItem.iconSystemName)
//        .foregroundStyle(.red)
//}

struct DayPage: View {
    @State private var isTitleTextFieldExpanded: Bool = false
    @Bindable var dday: DDay
    @State private var userSelectedCalendarUnits: UserSelectedCalendarUnits = UserSelectedCalendarUnits()

    var body: some View {
        Form {
            Section("Appearence") {
                LabeledContent {
                    TextField(text: $dday.title) {
                        Text("Title")
                    }
                    .multilineTextAlignment(.trailing)
                } label: {
                    Label {
                        
                    } icon: {
                        Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    }
                }

                Picker(selection: $dday.iconSystemName) {
                    ForEach(["star.fill", "tag"], id: \.self) { str in
                        Image(systemName: str)
                            .tag(str)
                    }
                } label: {
                    Label {
                        
                    } icon: {
                        Image(systemName: "photo")
                    }
                }
                
                ColorPicker(selection: $dday.foregroundColor, supportsOpacity: false) {
                    Label {
                        
                    } icon: {
                        Image(systemName: "paintpalette")
                    }
                }
            }


            Section("Extra info") {
                LabeledContent {
                    Text(dday.createdDate.toString(.dateTime(.medium)))
                } label: {
                    Text("Created Date")
                }
            }
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                // Push Alarm Button
                Button {
                    withAnimation {
                        dday.isAlarmOn.toggle()
                    }
                } label: {
                    Image(systemName: dday.isAlarmOn ? "alarm.waves.left.and.right" : "alarm")
                        .foregroundStyle(dday.isAlarmOn ? .primary : .tertiary)
                        .contentTransition(.symbolEffect)
                }
            }
        }
        .safeAreaInset(edge: .top) {
            DayItemListRow(dday: dday, allowedUnits: userSelectedCalendarUnits.units)
                .containerShape(.rect(cornerRadius: 15))
                .padding(30)
        }
    }
}
