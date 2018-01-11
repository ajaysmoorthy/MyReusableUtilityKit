/**
 *  UIViewControllerOperations.swift
 *  MyReusableUtilityKit
 *  Contains the extensions used for performing the commonly used functionalities relating to UIViewController that helps to customize the UIViewController
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import Foundation
import UIKit

extension UIViewController {
    /// Showing the navigation bar
    open func showTopNavigationBar(){
        self.navigationController?.isNavigationBarHidden = false
    }
    
    /// Hiding the navigation bar
    open func hideTopNavigationBar(){
        self.navigationController?.isNavigationBarHidden = true
    }
    
    /// Hiding the background of navigation bar
    open func clearNavigationBackground(){
        // Hiding the background of navigation bar
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
    }
    
}
