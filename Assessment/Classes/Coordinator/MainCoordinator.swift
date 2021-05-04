//
//  MainCoordinator.swift
//  Assessment
//
import UIKit
import Foundation
import WebController

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
		if let controller = navigationController.viewControllers.first as? NewsViewController {
			let viewModel = NewsViewModel()
			viewModel.showNewsDetail = { model in
				self.ShowNewsDetail(with: model)
			}
			
			controller.viewModel = viewModel
		}
    }
    
	func ShowNewsDetail(with model: NewsModel) {
		let webController = WebController()
		webController.load(model.url)
		navigationController.pushViewController(webController, animated: true)
    }
}
