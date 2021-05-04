//
//  Coordinator.swift
//  Assessment
//
import UIKit
import Foundation

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
