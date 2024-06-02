//
//  DayItem+Calculation.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import Foundation
import SwiftDate
import SwiftUI

extension DDay {
    var getTimeInterval: TimeInterval {
        (Date.now - date).timeInterval
    }
    
    func getString(allowedUnits: NSCalendar.Unit) -> String {
        getTimeInterval.toString { options in
            options.allowedUnits = allowedUnits
            options.zeroFormattingBehavior = .dropLeading
            options.unitsStyle = .abbreviated
        }
    }
    var getComponentLeft: [Calendar.Component : Int] {
        return date.differences(in: [.day, .hour, .minute, .second], from: Date.now)
    }
}


// Allowed Component: Day, Hour, Minute, Second



extension Dictionary where Key == Calendar.Component, Value == Int {
    var days: Int? { self[.day] }
    var hours: Int? { self[.hour] }
    var minutes: Int? { self[.minute] }
    var seconds: Int? { self[.second] }
    
    @ViewBuilder
    var text: some View {
        if let days = days {
            Text("\(days) D")
        }
        if let hours = hours {
            Text("\(hours) H")
        }
        if let minutes = minutes {
            Text("\(minutes) M")
        }
        if let seconds = seconds {
            Text("\(seconds) S")
        }
    }
}
