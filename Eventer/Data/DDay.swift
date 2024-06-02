//
//  Item.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import Foundation
import SwiftData
import SwiftUI

@Model
final class DDay {
    var id: String
    var date: Date
    var title: String
    var iconSystemName: String
    var createdDate: Date
    
    var foregroundColorData: ColorData
    var backgroundColorData: ColorData
    
    var isAlarmOn: Bool = true
    
    // sort
    var currentIndex: Int = -1
    
    init(
        date: Date = Date.now,
        title: String = "New",
        iconSystemName: String = "calendar",
        foregroundColorData: ColorData = Color.red.colorData,
        backgroundColorData: ColorData = Color.white.colorData,
        createdDate: Date
    ) {
        self.id = UUID().uuidString
        self.date = date
        self.title = title
        self.iconSystemName = iconSystemName
        self.foregroundColorData = foregroundColorData
        self.backgroundColorData = backgroundColorData
        self.createdDate = createdDate
    }
    
    var foregroundColor: Color {
        get {
            foregroundColorData.color
        } set {
            foregroundColorData = newValue.colorData
        }
    }
    
    var backgroundColor: Color {
        backgroundColorData.color
    }
}
