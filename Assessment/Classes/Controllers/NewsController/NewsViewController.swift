//
//  NewsViewController.swift
//  Assessment
//
import UIKit

class NewsViewController: UIViewController, Storyboarded {
	
	@IBOutlet weak var tableView: UITableView!
	var viewModel: NewsViewModel!
	
	private var cellIdentifer: String { String(describing: NewsTableViewCell.self) }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
		self.title = "NY Times Most Popular"
		tableView.register(UINib(nibName: cellIdentifer, bundle: nil), forCellReuseIdentifier: cellIdentifer)
		
		viewModel.didUpdateDataSource = {
			self.tableView.reloadData()
		}
		
		viewModel.fetchNews()
    }
}

extension NewsViewController: UITableViewDataSource {
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
		return viewModel.dataSource.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer) as! NewsTableViewCell
		cell.prepare(viewModel.dataSource[indexPath.row])
		return cell
	}
}

extension NewsViewController: UITableViewDelegate{
	func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
		viewModel.onShowNewsModel(indexPath)
	}
}
