/**
 *  CustomButton.swift
 *  MyReusableUtilityKit
 *  Contains the functionalities for CustomButton like setting border for UI buttons
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import UIKit
@IBDesignable
open class CustomButton: UIButton {
    //ibinspectable to set the custom bordercolor for button
    @IBInspectable open var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    //ibinspectable to set the custom borderwidth for button
    @IBInspectable open var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    //ibinspectable to set the corner radius for button
    @IBInspectable open var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
 }
