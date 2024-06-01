//
//  DayItem+Samples.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftDate
import SwiftUI
import Foundation

extension DayItem {
    static var samples: [DayItem] {
         return [
            DayItem(date: Date() - 3.days, title: "Meeting", iconSystemName: "briefcase", foregroundColorData: Color.white.colorData, backgroundColorData: Color.blue.colorData, createdDate: Date()),
             DayItem(date: Date() + 3.days, title: "Gym", iconSystemName: "sportscourt", foregroundColorData: Color.white.colorData, backgroundColorData: Color.green.colorData, createdDate: Date()),
             DayItem(date: Date() - 2.days, title: "Shopping", iconSystemName: "cart", foregroundColorData: Color.white.colorData, backgroundColorData: Color.orange.colorData, createdDate: Date()),
             DayItem(date: Date() + 2.days, title: "Dentist", iconSystemName: "bandage", foregroundColorData: Color.white.colorData, backgroundColorData: Color.red.colorData, createdDate: Date()),
             DayItem(date: Date() - 1.days, title: "Study", iconSystemName: "book", foregroundColorData: Color.black.colorData, backgroundColorData: Color.yellow.colorData, createdDate: Date()),
             DayItem(date: Date() + 1.days, title: "Birthday", iconSystemName: "gift", foregroundColorData: Color.white.colorData, backgroundColorData: Color.pink.colorData, createdDate: Date()),
             DayItem(date: Date() - 4.days, title: "Vacation", iconSystemName: "airplane", foregroundColorData: Color.white.colorData, backgroundColorData: Color.purple.colorData, createdDate: Date()),
             DayItem(date: Date() + 4.days, title: "Workshop", iconSystemName: "hammer", foregroundColorData: Color.white.colorData, backgroundColorData: Color.gray.colorData, createdDate: Date()),
             DayItem(date: Date() - 5.days, title: "Conference", iconSystemName: "person.2", foregroundColorData: Color.white.colorData, backgroundColorData: Color.cyan.colorData, createdDate: Date()),
             DayItem(date: Date() + 5.days, title: "Yoga", iconSystemName: "figure.yoga", foregroundColorData: Color.white.colorData, backgroundColorData: Color.mint.colorData, createdDate: Date())
         ]
     }
}
