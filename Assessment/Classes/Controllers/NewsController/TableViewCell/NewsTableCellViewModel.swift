//
//  File.swift
//  Assessment
//
class NewsTableCellViewModel{
	var title: String { model.headline }
	var author: String { model.newsDetail }
	var source : String { model.newsProvider }
	var date : String { model.timestamp }
	var url: String { model.detailUrl }
	
	var model: NewsRepresentor
	
	init(_ model: NewsRepresentor) {
		self.model = model
	}
}
