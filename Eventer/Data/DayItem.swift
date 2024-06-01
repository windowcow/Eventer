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
final class DayItem {
    var date: Date
    var title: String
    var iconSystemName: String
    var createdDate: Date
    
    var foregroundColorData: ColorData
    var backgroundColorData: ColorData
    
    init(
        date: Date = Date.now,
        title: String = "New",
        iconSystemName: String = "calendar",
        foregroundColorData: ColorData = Color.red.colorData,
        backgroundColorData: ColorData = Color.white.colorData,
        createdDate: Date
    ) {
        self.date = date
        self.title = title
        self.iconSystemName = iconSystemName
        self.foregroundColorData = foregroundColorData
        self.backgroundColorData = backgroundColorData
        self.createdDate = createdDate
    }
    
    var foregroundColor: Color {
        foregroundColorData.color
    }
    
    var backgroundColor: Color {
        backgroundColorData.color
    }
}
