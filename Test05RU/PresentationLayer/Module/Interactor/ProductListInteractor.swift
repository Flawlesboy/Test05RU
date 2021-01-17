//
//  ProductListInteractor.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

class ProductListInteractor {
    weak var output: ProductListInteractorOutput!
    var productService: IProductService!
}

extension ProductListInteractor: ProductListInteractorInput {
    func loadProduct() {
        productService.loadProduct { [weak self] (result: Result<ProductsModel>) in
            switch result {
            case .succes(let products):
                self?.output.show(product: products)
            case .error(let error):
                print("\(error) not data")
            }
        }
    }
}
