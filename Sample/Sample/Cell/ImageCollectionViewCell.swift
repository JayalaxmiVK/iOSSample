//
//  ImageCollectionViewCell.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionImage: UIImageView!
    func configureCell(cellimage: UIImage) {
        self.collectionImage.image = cellimage
    }
}
