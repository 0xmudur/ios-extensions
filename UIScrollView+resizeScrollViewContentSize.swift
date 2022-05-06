//
//  UIScrollView+resizeScrollViewContentSize.swift
//  iOSExtensions
//
//  Created by Muhammed Emin Aydın on 6.05.2022.
//

import Foundation

extension UIScrollView {

    func resizeScrollViewContentSize() {
        
        var contentRect = CGRect.zero

        for view in self.subviews {
            contentRect = contentRect.union(view.frame)
        }

        self.contentSize = contentRect.size
    }
}
