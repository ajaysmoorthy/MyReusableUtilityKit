/**
 *  CustomTextField.swift
 *  MyReusableUtilityKit
 *  Contains the functionalities for CustomTextField like setting border for UITextfield
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import UIKit
@IBDesignable
open class CustomTextField:UITextField {
    
    open var padding = UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5);
    
    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return UIEdgeInsetsInsetRect(bounds, padding)
    }
    
    // IBInspectable for placehodler color
    @IBInspectable open var placeHolderColor: UIColor? {
        get {
            return self.placeHolderColor
        }
        set {
            self.attributedPlaceholder = NSAttributedString(string:self.placeholder != nil ? self.placeholder! : "", attributes:[NSAttributedStringKey.foregroundColor: newValue!])
        }
    }
    
    // IBInspectable to set the custom bordercolor  for the textfield
    @IBInspectable open var bordercolor:UIColor = UIColor.clear{
        didSet {
            layer.borderColor = bordercolor.cgColor
        }
    }
    
    // IBInspectable to set the custom borderwidth for the textfield
    @IBInspectable open var borderwidth:CGFloat = 0 {
        didSet{
            layer.borderWidth = borderwidth
        }
    }
    // IBInspectable to set the corner radius for the textfield
    @IBInspectable open var cornerradius:CGFloat = 0 {
        didSet{
            layer.cornerRadius = cornerradius
        }
    }
    
}
