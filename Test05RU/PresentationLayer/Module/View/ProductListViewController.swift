//
//  ProductListViewController.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import UIKit

class ProductListViewController: UIViewController {
    
    var output: ProductListViewOutput!
    var productDataSource: ProductDataSource!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        output.viewIsReady()
    }
}

extension ProductListViewController: ProductListViewInput {
    func setupInitialState() {
        productDataSource.configure(tableView: tableView)
    }
    
    func show(product: ProductsModel) {
        productDataSource.show(product: product)
    }    
}
