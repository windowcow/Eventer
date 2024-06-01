//
//  ColorData.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import Foundation
import SwiftUI

struct ColorData: Codable, Hashable, Sendable {
    var hue: Double
    var saturation: Double
    var brightness: Double
    
    init(hue: Double, saturation: Double, brightness: Double) {
        self.hue = hue
        self.saturation = saturation
        self.brightness = brightness
    }
    
    var color: Color {
        get {
            Color(hue: hue, saturation: saturation, brightness: brightness)
        }
        set {
            self = newValue.colorData
        }
    }
}
