//
//  ListTableViewCell.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import UIKit

class ListTableViewCell: UITableViewCell {

    @IBOutlet weak var listLabel: UILabel!
    @IBOutlet weak var listimage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func configureCellWith(listItem: ListItem) {
        self.listimage.image = listItem.image
        self.listLabel.text = listItem.title
    }
}
