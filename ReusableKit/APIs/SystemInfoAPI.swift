/**
 *  SystemInfoAPI.swift
 *  MyReusableUtilityKit
 *  Contains the general app information, device details etc.
 *  Created by MyReusableUtilityKit on 01/01/16.
 *  Copyright © 2016 MyReusableUtilityKit. All rights reserved.
 */

import Foundation
import UIKit

/// The SystemInfoAPI provides the details of the device and Application
/// such as Device model, OSName, version, UUID etc
open class SystemInfoAPI {
    
    open static let shared = SystemInfoAPI()
    
    // MARK:- Device Specific details -
    
    /// Stores the model name of the device
    open let deviceModel       = UIDevice.current.model
    /// Stores the operating system name
    open let deviceOSName    = UIDevice.current.systemName
    /// Stores the operating system version
    open let deviceOSVersion = UIDevice.current.systemVersion
    /// Stores the localized version of model name
    open let localizedModel  = UIDevice.current.localizedModel
    /// Stores the device name
    open var deviceName : String? {
        
        return UIDevice.current.name
    }
    
    // MARK:- App Details -
    
    /// Retrieves the application version from the app bundle
    open var appVersion:String {
        
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    /// Retrieves the application name
    open var appName:String  {
        
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleName") as! String
    }
    
    /// Retrieves the bundle identifier
    open var bundleIdentifier:String {
        
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleIdentifier") as! String
    }
}
