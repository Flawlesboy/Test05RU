//
//  ProductService.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

protocol IProductService: class {
    func loadProduct(complition: @escaping (Result<ProductsModel>) -> Void)
}

class ProductService: IProductService {    
    let networkManager = CoreAssembly().networkManager
    
    func loadProduct(complition: @escaping (Result<ProductsModel>) -> Void) {
        let productRequest = ProductRequest()        
        networkManager.perform(with: productRequest) { (result: Result<ProductsModel>) in
            switch result {
            case .succes(let productResult):
                complition(Result.succes(productResult))
            case .error(let error):
                complition(Result.error(error))
            }
        }
    }
}
