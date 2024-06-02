//
//  DayItem+Samples.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import SwiftDate
import SwiftUI
import Foundation

extension DDay {
    static var samples: [DDay] {
         return [
            DDay(date: Date() - 3.days - 1.hours, title: "Meeting", iconSystemName: "briefcase", foregroundColorData: Color.white.colorData, backgroundColorData: Color.blue.colorData, createdDate: Date()),
            DDay(date: Date() + 3.days - 1.hours, title: "Gym", iconSystemName: "sportscourt", foregroundColorData: Color.yellow.colorData, backgroundColorData: Color.green.colorData, createdDate: Date()),
            DDay(date: Date() - 2.days - 1.hours, title: "Shopping", iconSystemName: "cart", foregroundColorData: Color.black.colorData, backgroundColorData: Color.orange.colorData, createdDate: Date()),
            DDay(date: Date() + 2.days - 1.hours, title: "Dentist", iconSystemName: "bandage", foregroundColorData: Color.gray.colorData, backgroundColorData: Color.red.colorData, createdDate: Date()),
            DDay(date: Date() - 1.days - 1.hours, title: "Study", iconSystemName: "book", foregroundColorData: Color.purple.colorData, backgroundColorData: Color.yellow.colorData, createdDate: Date()),
            DDay(date: Date() + 1.days - 1.hours, title: "Birthday", iconSystemName: "gift", foregroundColorData: Color.green.colorData, backgroundColorData: Color.pink.colorData, createdDate: Date()),
            DDay(date: Date() - 4.days - 1.hours, title: "Vacation", iconSystemName: "airplane", foregroundColorData: Color.orange.colorData, backgroundColorData: Color.purple.colorData, createdDate: Date()),
            DDay(date: Date() + 4.days - 1.hours, title: "Workshop", iconSystemName: "hammer", foregroundColorData: Color.red.colorData, backgroundColorData: Color.gray.colorData, createdDate: Date()),
            DDay(date: Date() - 5.days - 1.hours, title: "Conference", iconSystemName: "person.2", foregroundColorData: Color.blue.colorData, backgroundColorData: Color.cyan.colorData, createdDate: Date()),
            DDay(date: Date() + 5.days - 1.hours, title: "Yoga", iconSystemName: "figure.yoga", foregroundColorData: Color.mint.colorData, backgroundColorData: Color.mint.colorData, createdDate: Date())
         ]
     }
}
