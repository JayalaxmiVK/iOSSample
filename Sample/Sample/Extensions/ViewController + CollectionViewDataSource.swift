//
//  ViewController + CollectionViewDataSource.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import Foundation
import UIKit
// MARK: - UICollectionViewDataSource
extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagesArray.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Constants.collectionCellIdentifier,
                                                      for: indexPath) as? ImageCollectionViewCell
        cell?.configureCell(cellimage: imagesArray[indexPath.row])
        return cell!
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.size.width, height: Constants.collectionCellHeight)
    }
}
