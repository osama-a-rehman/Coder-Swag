//
//  ProductsVC.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var category: Category!
    
    var products: [Product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "CODERSWAG"
        
        if category.title == "SHIRTS" {
            products = DataService.instance.getShirts()
        }else if category.title == "HATS"{
            products = DataService.instance.getHats()
        }else if category.title == "HOODIES"{
            products = DataService.instance.getHoodies()
        }else if category.title == "DIGITAL"{
            products = DataService.instance.getDigitals()
        }
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let productCell = collectionView.dequeueReusableCell(withReuseIdentifier: "productCell", for: indexPath) as? ProductCell {
            
            productCell.configureCell(product: products[indexPath.row])
            return productCell
        }
        
        return ProductCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var collectionViewWidth: CGFloat!
        
        let screenWidth = UIScreen.main.bounds.width
        
        collectionViewWidth = CGFloat(screenWidth / 2) - 10
        
        return CGSize(width: collectionViewWidth, height: CGFloat(252))
    }

}
