//
//  UITableView+Ext.swift
//  iOSExtensions
//
//  Created by Muhammed Emin Aydın on 16.01.2023.
//

import Foundation

public extension UITableView {
    func register<T: UITableViewCell>(cellType: T.Type, bundle: Bundle? = nil) {
        let className = cellType.className
        let nib = UINib(nibName: className, bundle: bundle)
        register(nib, forCellReuseIdentifier: className)
    }
    
    func register<T: UITableViewCell>(cellTypes: [T.Type], bundle: Bundle? = nil) {
        cellTypes.forEach { register(cellType: $0, bundle: bundle) }
    }
    
    func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
    
    func reloadSectionWithoutAnimation(section: Int) {
        UIView.performWithoutAnimation {
            let offset = self.contentOffset
            self.reloadSections(IndexSet(integer: section), with: .none)
            self.contentOffset = offset
        }
    }

    func reloadSectionGroupWithoutAnimation(sectionGroup:[Int]) {
        UIView.performWithoutAnimation {
            let offset = self.contentOffset
            let indexSet:IndexSet = IndexSet(sectionGroup)
            self.reloadSections(indexSet, with: .none)
            self.contentOffset = offset
        }
    }
    
    /// Keyboard'ın durumuna göre ekran focuslama
    /// - Parameter value: Instet for tableView bottom.
    func setBottomInset(to value: CGFloat) {
        let edgeInset = UIEdgeInsets(top: 0, left: 0, bottom: value, right: 0)
        self.contentInset = edgeInset
        self.scrollIndicatorInsets = edgeInset
    }
}
