/**
 *  UIVIewOperations.swift
 *  MyReusableUtilityKit
 *  Contains the extensions used for performing the commonly used functionalities relating to UIView that helps to customize the UIView
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import Foundation
import UIKit

extension UIView {
    
    /**
     Draws boreder for the view with given color and width
     - parameter color:  UIColor object in which the border to be drawn
     - parameter width:  Width of the border
     - parameter radius: Radius required for the view
     */
    open func drawBorderWithColor(_ color:UIColor, borderWidth width:Float, andRadius radius:Float){
        // Sets the border Color
        self.layer.borderColor  = color.cgColor;
        // Sets the border width
        self.layer.borderWidth  = CGFloat(width);
        // Sets the corner radius
        self.layer.cornerRadius = CGFloat(radius);
    }
    
    /**
     Clears the border color of a UIView
     */
    open func clearBorderColor(){
        // Sets the border Color
        self.layer.borderColor  = UIColor.clear.cgColor;
    }
    
    /**
     Marks a red border around view
     */
    open func markAsErrorView(){
        self.drawBorderWithColor(UIColor.red, borderWidth: 1.0, andRadius: 1.0);
    }
    
    /**
     Converts a view to circular view from rectangular view
     */
    open func makeCircularView() {
        self.layer.cornerRadius = self.frame.size.width/2;
    }
    
    /**
     Animates the UIView with shake effects
    */
    open func shakeAnimation(){
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 4
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 10, y: self.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 10, y: self.center.y))
        self.layer.add(animation, forKey: "position")
    }
    
    /**
     Adds a blur view to the current view
     */
    open func addBlurView(){
        
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight] // for supporting device rotation
        self.addSubview(blurEffectView)
    }
    
    open func setBackgroundImage(image:UIImage){
        UIGraphicsBeginImageContext(self.frame.size)
        image.draw(in: self.bounds)
        
        if let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() {
            self.backgroundColor = UIColor(patternImage: image)
        }
        
        defer {
            UIGraphicsEndImageContext()
        }
    }
}

