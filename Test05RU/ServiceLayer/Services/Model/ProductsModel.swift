//
//  ProductsModel.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

struct ProductsModel: Codable {
    let information: String
    let products: [Product]
}

struct Product: Codable {
    let image: String
    let id: Int
    let title: String
    let price: Int
    let count: String
    let isEstimatedPrice: Bool
    let presence: Bool
}
