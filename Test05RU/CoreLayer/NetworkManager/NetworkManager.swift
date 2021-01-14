//
//  NetworkManager.swift
//  Test05RU
//
//  Created by Загид Гусейнов on 14.01.2021.
//

import Foundation

protocol InetworkManager {
    func perform<T>(with requet: IRequest, completion: @escaping (Result<T>) -> Void) where T: Codable
}

class NetworkManager: InetworkManager {
    func perform<T>(with request: IRequest, completion: @escaping (Result<T>) -> Void) where T : Codable {
        guard let urlRequest = request.urlRequest else {
            completion(Result.error("Wrong url request"))
            return
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, _, error) in
            if let error = error {
                completion(Result.error(error.localizedDescription))
                return
            }
            
            guard let data = data else {
                completion(Result.error("No data"))
                return
            }
            
            do {
                let str = String(decoding: data, as: UTF8.self)
                print(str)
                let networks = try JSONDecoder().decode(T.self, from: data)
                completion(Result.succes(networks))
            } catch {
                completion(Result.error(error.localizedDescription))
                print(error.localizedDescription)
            }
        }        
        task.resume()
    }
}
