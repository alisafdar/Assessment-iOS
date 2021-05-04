//
//  NewsRepresentor.swift
//  Assessment
//

import Foundation

protocol NewsRepresentor {
	var detailUrl: String { get }
	var headline: String { get }
	var newsDetail: String { get }
	var timestamp: String { get }
	var newsProvider: String { get }
}
