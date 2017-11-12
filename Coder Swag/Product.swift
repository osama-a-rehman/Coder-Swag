//
//  Product.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import Foundation

struct Product {
    public private(set) var imageName: String
    public private(set) var description: String
    public private(set) var price: String
    
    init(imageName: String, description: String, price: String) {
        self.imageName = imageName
        self.description = description
        self.price = price
    }
}
