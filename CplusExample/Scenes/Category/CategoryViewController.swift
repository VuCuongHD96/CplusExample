//
//  CategoryViewController.swift
//  CplusExample
//
//  Created by Work on 15/03/2024.
//

import UIKit

class CategoryViewController: UIViewController {
    
    @IBOutlet private weak var searchBar: UISearchBar!
    @IBOutlet private weak var tableView: UITableView!
    
    var viewModel = CategoryViewModel()
    
    struct Constant {
        static let nibName = "CategoryCell"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupData()
    }
    
    private func setupData() {
        viewModel.fetchCategoryList()
    }
    
    private func setupTableView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: Constant.nibName, bundle: nil),
                           forCellReuseIdentifier: Constant.nibName)
    }
}

extension CategoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Constant.nibName, for: indexPath) as? CategoryCell else {
            return UITableViewCell()
        }
        let categoryList = viewModel.filterCategoryList
        let categoryItem = categoryList[indexPath.row]
        cell.setContent(data: categoryItem)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.filterCategoryList.count
    }
}

extension CategoryViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
}

extension CategoryViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        viewModel.findCategory(name: searchText)
        tableView.reloadData()
    }
}
