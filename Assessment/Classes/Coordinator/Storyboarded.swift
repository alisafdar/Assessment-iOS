//
//  Storyboarded.swift
//  Assessment
//
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
    static func instantiateInitial() -> Self
}

extension Storyboarded where Self: UIViewController {
    
    static func instantiate() -> Self {
        // this pulls out "Application.ViewController"
        let className = String(describing: self)
        
        // load our storyboard
        let storyboard = UIStoryboard(name: Storyboard.main.rawValue, bundle: Bundle.main)
        
        // instantiate a view controller with that identifier, and force cast as the type that was requested
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
    }
    
    static func instantiateInitial() -> Self {
        // load our storyboard
        let storyboard = UIStoryboard(name: Storyboard.main.rawValue, bundle: Bundle.main)
        
        // instantiate initial view controller, and force cast as the type that was requested
        return storyboard.instantiateInitialViewController() as! Self
    }
}

fileprivate enum Storyboard : String {
    case main = "Main"
}
