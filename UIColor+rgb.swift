//
//  UIColor+rgb.swift
//  iOSExtensions
//
//  Created by Muhammed Emin Aydın on 11.06.2022.
//

import Foundation
import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let myColor = UIColor.rgb(red: 21, green: 11, blue: 100)
}
