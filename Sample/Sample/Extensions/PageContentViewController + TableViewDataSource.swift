//
//  PageContentViewController + TableViewDataSource.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import Foundation
import UIKit
// MARK: - UITableViewDataSource
extension PageContentViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let currentListArr = getCurrentListArray()
        return isFiltering ? filterListArray.count : currentListArr.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.tableCellIdentifier) as? ListTableViewCell
        if isFiltering {
            cell?.configureCellWith(listItem: filterListArray[indexPath.row])
        } else {
            let currentListArr = getCurrentListArray()
            cell?.configureCellWith(listItem: currentListArr[indexPath.row])
        }
        return cell ?? UITableViewCell(style: .default, reuseIdentifier: Constants.tableCellIdentifier)
    }
}
