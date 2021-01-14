//
//  ProductRequest.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation


class ProductRequest: IRequest {
    private let baseUrl = "https://raw.githubusercontent.com/AhmedovDev/DiplomDB/master/products.json"
    
    var urlRequest: URLRequest? {
        if let url = URL(string: baseUrl) {
            return URLRequest(url: url)
        }
        return nil
    }
}
