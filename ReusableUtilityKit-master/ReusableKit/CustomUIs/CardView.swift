/**
 *  CardView.swift
 *  MyReusableUtilityKit
 *  Contains the CardView functionalities that can be used all over the application
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import UIKit

@IBDesignable
open class CardView: UIView {
    
    @IBInspectable open var masksToBounds:Bool = false {
        
        didSet {
            layer.masksToBounds = masksToBounds
        }
    }
    
    @IBInspectable open var shadowOffset:CGSize =  CGSize(width: 0, height: 5){
        
        didSet{
            layer.shadowOffset = shadowOffset
        }
    }
    
    @IBInspectable open var shadowRadius:CGFloat =  5 {
        
        didSet{
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable open var shadowOpacity:Float =  0.5 {
        
        didSet{
            layer.shadowOpacity = shadowOpacity
        }
    }
    
}
