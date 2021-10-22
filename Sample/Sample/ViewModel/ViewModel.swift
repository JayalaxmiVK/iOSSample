//
//  ViewModel.swift
//  Sample
//
//  Created by Jayalaxmi Kulkarni on 21/10/21.
//

import Foundation
import UIKit

var imagesArray: [UIImage] = [#imageLiteral(resourceName: "4"), #imageLiteral(resourceName: "1"), #imageLiteral(resourceName: "3"), #imageLiteral(resourceName: "5"), #imageLiteral(resourceName: "1")]
var listArray1 = [ListItem(title: "title 1", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 2", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 3", image: #imageLiteral(resourceName: "1")),
                 ListItem(title: "title 4", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 5", image: #imageLiteral(resourceName: "3")),
                 ListItem(title: "title 6", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 7", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 81", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 82", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 83", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 84", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 85", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 86", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 87", image: #imageLiteral(resourceName: "4"))]

var listArray2 = [ListItem(title: "title 11", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 223", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 33", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 4", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 5", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 12", image: #imageLiteral(resourceName: "5")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "5"))]

var listArray3 = [ListItem(title: "title 1", image: #imageLiteral(resourceName: "2")),
                 ListItem(title: "title 2", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                 ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4")),
                  ListItem(title: "title 13", image: #imageLiteral(resourceName: "4"))]
class ViewModel {
    func getStackViewHeight(currentPageIndex: Int) -> CGFloat {
        switch currentPageIndex {
        case 0:
            return CGFloat(listArray1.count*50)
        case 1:
            return  CGFloat(listArray2.count*50)
        case 2:
            return CGFloat(listArray3.count*50)
        default:
            return CGFloat(listArray1.count*50)
        }
    }
}
