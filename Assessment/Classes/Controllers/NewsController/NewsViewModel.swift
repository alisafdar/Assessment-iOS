//
//  ViewModel.swift
//  Assessment
//
import Foundation
import MKProgress

class NewsViewModel {
    
	// MARK: - Properties
	
	var dataSource: [NewsTableCellViewModel] = []
	
	var repository: NewsRepository!
    
	// MARK: - Clousers / Events
	
	var showNewsDetail: ((NewsModel) -> Void)?
	var didUpdateDataSource: (() -> Void)?
	
	init() {
		repository = DataNewsRepository()
	}
	
	func onShowNewsModel(_ indexPath :IndexPath) {
		let cellViewModel = dataSource[indexPath.row]
		if let model = cellViewModel.model as? NewsModel {
			showNewsDetail?(model)
		}
	}
    
	func fetchNews() {
		MKProgress.show()
		repository.fetchNews("all-sections", "7") { (result) in
			MKProgress.hide()
			switch result {
				case .success(let news):
					self.dataSource.append(contentsOf: news.map { NewsTableCellViewModel($0) })
					self.didUpdateDataSource?()
				case .failure(let error):
					print(error)
			}
		}
    }
}
