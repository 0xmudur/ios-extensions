//
//  UIFont+Ext.swift
//  iOSExtensions
//
//  Created by Muhammed Emin Aydın on 16.01.2023.
//

import Foundation

extension UIFont {
    
    enum OpenSans: String {
        case Regular, SemiBold, Bold, ExtraBold, Light
    }
    
    static func openSans(_ type: UIFont.OpenSans, size: CGFloat) -> UIFont {
        return UIFont.init(name: "OpenSans-\(type.rawValue)", size: size)!
    }
}
