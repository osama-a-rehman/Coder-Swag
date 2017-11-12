//
//  CategoryCell.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    func configureCell(category: Category){
        categoryLabel.text = category.title
        categoryImageView.image = UIImage(named: category.imageName)
    }
}
