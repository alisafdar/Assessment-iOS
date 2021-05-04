//
//  NewsModel.swift
//  Assessment
//

import Foundation

struct NewsModel: Decodable {
	var published_date: String = ""
	var source: String = ""
	var byline: String = ""
	var title: String = ""
	var url: String = ""
}

extension NewsModel : NewsRepresentor {
	var detailUrl: String {
		return url
	}

	var headline: String {
		title
	}

	var newsDetail: String {
		byline
	}

	var timestamp: String {
		published_date
	}

	var newsProvider: String {
		return source
	}
}
