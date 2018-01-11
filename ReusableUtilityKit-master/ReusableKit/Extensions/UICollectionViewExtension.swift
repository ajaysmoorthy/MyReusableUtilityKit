/**
 *  UICollectionViewExtension.swift
 *  MyReusableUtilityKit
 *  Contains the extensions used for performing the commonly used functionalities relating to UICollectionView that helps to customize the CollectionView
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import Foundation

extension UICollectionViewCell {
    
    /// Sets shadow to the cell
    open func setShadow() {
        self.layer.masksToBounds   = false
        self.layer.shadowOpacity   = 0.5
        self.layer.shadowRadius    = 5
        self.layer.shadowOffset    = CGSize.zero
        self.layer.shadowPath      = UIBezierPath(rect: self.bounds).cgPath
    }
}
