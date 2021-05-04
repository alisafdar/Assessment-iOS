//
//  NetworkService.swift
//  

import Foundation
import Alamofire
import AlamofireNetworkActivityLogger
import AlamofireNetworkActivityIndicator

// MARK: - NetworkService

class NetworkService {
    
    // MARK: - Private Static Variables
    
    static let shared = NetworkService()
    
    init() {
        NetworkActivityLogger.shared.level = .debug
        NetworkActivityLogger.shared.startLogging()
        
        NetworkActivityIndicatorManager.shared.isEnabled = true
        NetworkActivityIndicatorManager.shared.completionDelay = 0.2
    }
    
    func request<T: Decodable>(url: URL, method: String, parameters: [String: Any]? = nil, completion: @escaping (Swift.Result<T, Error>) -> Void) {
        let authHeader: HTTPHeaders = ["x-access-token": Application.token]        
		
        AF.request(url, method: HTTPMethod(rawValue: method.uppercased()), parameters: parameters, headers: authHeader)
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let object):
                    completion(.success(object))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
    
    
}
