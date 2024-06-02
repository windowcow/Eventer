//
//  UserSelectedCalendarUnits.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import Foundation

@Observable final class UserSelectedCalendarUnits {
    var days = true
    var hours = true
    var minutes = true
    var seconds = true
    
    var units: NSCalendar.Unit {
        var units = NSCalendar.Unit()
        
        if days {
            units.insert(.day)
        }
        if hours {
            units.insert(.hour)
        }
        if minutes {
            units.insert(.minute)
        }
        if seconds {
            units.insert(.second)
        }
        
        return units
    }
}
