//
//  CategoryVC.swift
//  Coder Swag
//
//  Created by Osama Mac on 11/12/17.
//  Copyright © 2017 Osama Mac. All rights reserved.
//

import UIKit

class CategoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)

        tabelView.delegate = self
        tabelView.dataSource = self
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let categoryCell = tabelView.dequeueReusableCell(withIdentifier: "categoryCell", for: indexPath) as? CategoryCell {
            
            categoryCell.configureCell(category: DataService.instance.getCategories()[indexPath.row])
            
            return categoryCell
        }else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toProductsVCSegue", sender: DataService.instance.getCategories()[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationProductVC = segue.destination as? ProductsVC {
            if let category = sender as? Category{
                destinationProductVC.category = category
            }
        }
    }
}
