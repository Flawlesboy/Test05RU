//
//  ProductListAssembly.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation
import UIKit

class ProductListAssembly {
    func view() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ProductListViewController") as! ProductListViewController
        
        let presenter = ProductListPresenter()
        let interactor = ProductListInteractor()
        let router = ProductListRouter()
        let dataSource = ProductDataSource()
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        view.productDataSource = dataSource
        view.output = presenter
        
        interactor.output = presenter
        interactor.productService = ServiceAssembly().productService
        
        return view
    }
}
