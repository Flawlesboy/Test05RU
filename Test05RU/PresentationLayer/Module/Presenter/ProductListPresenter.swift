//
//  ProductListPresenter.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

class ProductListPresenter {
    
    weak var view: ProductListViewInput!
    var router: ProductListRouterInput!
    var interactor: ProductListInteractorInput!    
}

extension ProductListPresenter: ProductListViewOutput {
    func viewIsReady() {
        view.setupInitialState()
        interactor.loadProduct()
    }
}

extension ProductListPresenter: ProductListInteractorOutput {
    func show(product: ProductsModel) {
        DispatchQueue.main.async { [weak self] in
            self?.view.show(product: product)
        }
    }    
}
