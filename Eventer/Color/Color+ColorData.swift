//
//  Color+ColorData.swift
//  Eventer
//
//  Created by windowcow on 6/1/24.
//

import Foundation
import SwiftUI

extension Color {
    var colorData: ColorData {
        let uiColor = UIColor(self)
        var hue: CGFloat = 0
        var saturation: CGFloat = 0
        var brightness: CGFloat = 0
        uiColor.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: nil)
        
        return ColorData(hue: Double(hue), saturation: Double(saturation), brightness: Double(brightness))
    }
}
