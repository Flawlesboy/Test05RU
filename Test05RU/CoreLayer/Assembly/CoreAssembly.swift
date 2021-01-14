//
//  CoreAssembly.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

protocol ICoreAssembly {
    var networkManager: InetworkManager { get }
}

class CoreAssembly: ICoreAssembly {
    lazy var networkManager: InetworkManager = NetworkManager()    
}
