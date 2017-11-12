//
//  DataService.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import Foundation

class DataService{
    static var instance = DataService()
    
    private init(){ }
    
    private let categories: [Category] = [
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "DIGITAL", imageName: "digital")
    ]
    
    private let shirts: [Product] = [
        Product(imageName: "shirt01", description: "Devslopes Logo Graphic T-Shirt", price: "$25"),
        Product(imageName: "shirt02", description: "Devslopes Logo Graphic T-Shirt", price: "$45"),
        Product(imageName: "shirt03", description: "Devslopes Logo Graphic T-Shirt", price: "$85"),
        Product(imageName: "shirt04", description: "Devslopes Logo Graphic T-Shirt", price: "$15"),
        Product(imageName: "shirt05", description: "Devslopes Logo Graphic T-Shirt", price: "$30")
    ]
    
    private let hats: [Product] = [
        Product(imageName: "hat01", description: "Devslopes Logo Graphic Hat", price: "$25"),
        Product(imageName: "hat02", description: "Devslopes Logo Graphic Hat", price: "$45"),
        Product(imageName: "hat03", description: "Devslopes Logo Graphic Hat", price: "$85"),
        Product(imageName: "hat04", description: "Devslopes Logo Graphic Hat", price: "$15")
    ]
    
    private let hoodies: [Product] = [
        Product(imageName: "hoodie01", description: "Devslopes Logo Graphic Hoodie", price: "$25"),
        Product(imageName: "hoodie02", description: "Devslopes Logo Graphic Hoodie", price: "$45"),
        Product(imageName: "hoodie03", description: "Devslopes Logo Graphic Hoodie", price: "$85"),
        Product(imageName: "hoodie04", description: "Devslopes Logo Graphic Hoodie", price: "$15")
    ]
    
    private let digitals: [Product] = []
    
    func getCategories() -> [Category]{
        return categories
    }
    
    func getShirts() -> [Product]{
        return shirts
    }
    
    func getHats() -> [Product]{
        return hats
    }
    
    func getHoodies() -> [Product]{
        return hoodies
    }
    
    func getDigitals() -> [Product]{
        return digitals
    }
}
