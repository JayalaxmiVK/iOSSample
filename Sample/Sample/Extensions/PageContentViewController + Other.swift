//
//  PageContentViewController + OtherDelegate.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import Foundation
import UIKit

// MARK: - UITableViewDelegate
extension PageContentViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return Constants.tableCellHeight
    }
}

// MARK: - UISearchResultsUpdating
extension PageContentViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        searchText = searchController.searchBar.text
        self.filterContentForSearchText(searchText!)
    }
}

// MARK: - Filter/Search 
extension PageContentViewController {
    func filterContentForSearchText(_ searchTxt: String) {
        var filteredList = [ListItem]()
        let searchText = searchTxt.filter { !$0.isWhitespace }
        let currentListArr = getCurrentListArray()
        for item in currentListArr {
            if item.title.localizedCaseInsensitiveContains(searchText) {
                filteredList.append(item)
            }
        }
        filterListArray = filteredList
        self.tableView.reloadData()
    }
    func getCurrentListArray() -> [ListItem] {
        switch curentPage {
        case 0:
            return listArray1
        case 1:
            return listArray2
        case 2:
            return listArray3
        default:
            return listArray1
        }
    }
}
