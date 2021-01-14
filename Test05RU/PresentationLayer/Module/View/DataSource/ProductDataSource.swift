//
//  ProductDataSource.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import UIKit

class ProductDataSource: NSObject {
    
    var productsArray = [Product]()
    var tableVIew: UITableView!
    
    func configure(tableView: UITableView) {
        self.tableVIew = tableView
        self.tableVIew.delegate = self
        self.tableVIew.dataSource = self        
    }
    
    func show(product: ProductsModel) {
        productsArray = product.products
        
        tableVIew.reloadData()
    }      
}

extension ProductDataSource: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ProductTableViewCell
        
        let product = productsArray[indexPath.row]        
        cell.configure(product: product)
        
        return cell
    }
}
