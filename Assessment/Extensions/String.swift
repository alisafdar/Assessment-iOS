//
//  String.swift
//  Assessment
//
import Foundation

@inline(__always) func UUIDString() -> String {
    return UUID().uuidString.lowercased()
}

@inline(__always) func LocalizedString(_ string: String, comment: String = String()) -> String {
    return string.localized
}

extension String {
    
    var localized: String {
        return self
    }
}
