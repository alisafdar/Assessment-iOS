//
//  Bundle.swift
//  Assessment
//
import Foundation

extension Bundle {
    
    var applicationName: String? {
        return infoDictionary?["CFBundleName"] as? String
    }
    var applicationDisplayName: String? {
        return infoDictionary?["CFBundleDisplayName"] as? String
    }
    var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
    
}
