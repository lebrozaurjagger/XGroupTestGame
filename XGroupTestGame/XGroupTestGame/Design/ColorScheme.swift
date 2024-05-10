//
//  ColorScheme.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import Foundation
import SwiftUI

extension Color {
//    Background Colors
    public static var backgroundFrame: Color {
        return Color(UIColor(red: 43/255, green: 101/255, blue: 130/255, alpha: 1.0))
    }
    public static var backgroundCenter: Color {
        return Color(UIColor(red: 73/255, green: 144/255, blue: 113/255, alpha: 1.0))
    }
    
//    Logo Colors
    public static var darkBlueLogoTop: Color {
        return Color(UIColor(red: 20/255, green: 0/255, blue: 85/255, alpha: 1.0))
    }
    public static var darkBlueLogoBottom: Color {
        return Color(UIColor(red: 44/255, green: 0/255, blue: 187/255, alpha: 1.0))
    }
    
    public static var goldenLogoTop: Color {
        return Color(UIColor(red: 169/255, green: 121/255, blue: 38/255, alpha: 1.0))
    }
    public static var goldenLogoBottom: Color {
        return Color(UIColor(red: 217/255, green: 183/255, blue: 72/255, alpha: 1.0))
    }
    
//    Logo Text Colors
    public static var greenTextTop: Color {
        return Color(UIColor(red: 0/255, green: 187/255, blue: 31/255, alpha: 1.0))
    }
    public static var greenTextBottom: Color {
        return Color(UIColor(red: 0/255, green: 234/255, blue: 51/255, alpha: 1.0))
    }
    
    public static var goldenTextTop: Color {
        return Color(UIColor(red: 185/255, green: 136/255, blue: 70/255, alpha: 1.0))
    }
    public static var goldenTextCenter: Color {
        return Color(UIColor(red: 252/255, green: 221/255, blue: 154/255, alpha: 1.0))
    }
    public static var goldenTextBottom: Color {
        return Color(UIColor(red: 239/255, green: 211/255, blue: 115/255, alpha: 1.0))
    }
    
//    Button Color
    public static var buttonYellow: Color {
        return Color(UIColor(red: 241/255, green: 175/255, blue: 6/255, alpha: 1.0))
    }
    
    public static var buttonCyan: Color {
        return Color(UIColor(red: 6/255, green: 199/255, blue: 241/255, alpha: 1.0))
    }
    
//    Frame Stroke Color
    public static var strokeColorLevels: Color {
        return Color(UIColor(red: 255/255, green: 203/255, blue: 19/255, alpha: 1.0))
    }
}
