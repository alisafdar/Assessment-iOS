//
//  NewsRepository.swift
//  Assessment
//

import Foundation

protocol NewsRepository {
	
	func fetchNews(_ sections :String, _ period :String, completion: @escaping (Result<[NewsModel], Error>) -> Void)
}
