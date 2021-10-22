//
//  PageContentViewController.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import UIKit

class PageContentViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet var tableView: UITableView!
    // MARK: - Properties
    var searchText: String?
    var curentPage: Int = 0
    let searchController = UISearchController(searchResultsController: nil)
    var filterListArray = [ListItem]()
    var isFiltering: Bool {
        return searchController.isActive && !(searchController.searchBar.text?.isEmpty ?? true)
    }
    // MARK: - Viewlife cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
        searchControllerSetUp()
    }
    override func viewWillDisappear(_ animated: Bool) {
        searchController.isActive = false
    }
    // search controller setup
    func searchControllerSetUp() {
        definesPresentationContext = true
        searchController.isActive = true
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchResultsUpdater = self
        searchController.searchBar.searchBarStyle = .minimal
        searchController.searchBar.searchTextField.textColor = UIColor.systemBlue
        searchController.searchBar.isTranslucent = false
        tableView.tableHeaderView = searchController.searchBar
    }
}
