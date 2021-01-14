//
//  ServiceAssembly.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

protocol IServiceAssebly {
    var productService: IProductService { get }
}

class ServiceAssembly: IServiceAssebly {    
    lazy var productService: IProductService = ProductService()
}
