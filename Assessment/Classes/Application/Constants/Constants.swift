//
//  Constants.swift
//  Assessment
//
import UIKit
import Foundation

// MARK: - Constants

let Screen = UIScreen.main.bounds.size
struct ScreenSize {
    static let SCREEN_WIDTH         = Screen.width
    static let SCREEN_HEIGHT        = Screen.height
    static let SCREEN_MAX_LENGTH    = max(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
    static let SCREEN_MIN_LENGTH    = min(ScreenSize.SCREEN_WIDTH, ScreenSize.SCREEN_HEIGHT)
}

let IS_IPAD      = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1024.0
let IS_IPAD_PRO  = UIDevice.current.userInterfaceIdiom == .pad && ScreenSize.SCREEN_MAX_LENGTH == 1366.0
