//
//  ProductCell.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var productDescriptionLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    func configureCell(product: Product){
        productImageView.image = UIImage(named: product.imageName)
        productDescriptionLabel.text = product.description
        productPriceLabel.text = product.price
    }
}
