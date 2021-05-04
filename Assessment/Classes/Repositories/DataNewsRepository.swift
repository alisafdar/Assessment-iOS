//
//  DataNewsRepository.swift
//  Assessment
//

import Foundation

class DataNewsRepository: NewsRepository {
	
	func fetchNews(_ sections :String, _ period :String, completion: @escaping (Result<[NewsModel], Error>) -> Void) {
		let url = URL(string: Application.Configuration.APIBaseURL + "svc/mostpopular/v2/mostviewed/\(sections)/\(period).json?api-key=\(Application.apiKey)")!
		
		NetworkService.shared.request(url: url, method: "GET") { (result: Result<NewsResponseModel, Error>) in
			switch result {
				case .success(let object):
					completion(.success(object.results))
				case .failure(let error):
					completion(.failure(error))
			}
		}
	}
	
}


