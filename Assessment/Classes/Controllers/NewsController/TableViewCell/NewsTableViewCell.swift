//
//  NewsTableViewCell.swift
//  Assessment
//
//  Created by Ali Safdar on 03/05/2021.
//  Copyright © 2021 Hamid Farooq. All rights reserved.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
	
	@IBOutlet weak var titleLabel: UILabel!
	@IBOutlet weak var authorLabel: UILabel!
	@IBOutlet weak var sourceLabel: UILabel!
	@IBOutlet weak var dateLabel: UILabel!
	
	var viewModel: NewsTableCellViewModel?
	
	
	override func awakeFromNib() {
		super.awakeFromNib()
		selectedBackgroundView = UIView()
	}
	
	func prepare(_ viewModel: NewsTableCellViewModel) {
		self.viewModel = viewModel
		
		titleLabel.text = viewModel.title
		authorLabel.text = viewModel.author
		sourceLabel.text = viewModel.source
		dateLabel.text = viewModel.date
	}
}
