//
//  Result.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

enum Result<T> {
    case succes(T)
    case error(String)
}
