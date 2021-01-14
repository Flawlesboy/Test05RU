//
//  ProductListViewInput.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

protocol ProductListViewInput: class {
    func setupInitialState()
    func show(product: ProductsModel)
}
