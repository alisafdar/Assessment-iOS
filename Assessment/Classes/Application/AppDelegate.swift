//
//  AppDelegate.swift
//  Assessment
//
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: MainCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        UIApplication.shared.statusBarStyleLightContent()
		
        // send that into our coordinator so that it can display view controllers
		coordinator = MainCoordinator(navigationController: window!.rootViewController! as! UINavigationController)
        
        // tell the coordinator to take over control
        coordinator?.start()
        
        return true
    }
}
