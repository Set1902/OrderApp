//
//  MenuController.swift
//  OrderApp
//
//  Created by Sergei Kovalev on 28.07.2022.
//

import Foundation


class MenuController {
    let baseURL = URL(string: "http://localhost:8080/")!
    
    
    
    
    
    
    func fetchCategories(completion: @escaping ((Result<[String], Error>) -> Void)) {
        let categoriesURL = baseURL.appendingPathComponent("categories")
        
        let task = URLSession.shared.dataTask(with: categoriesURL)
        { (data, response, error) in
            
        }
        task.resume()
    }
    
    func fetchMenuItems(forCategory categoryName: String, completion: @escaping ((Result<[MenuItem], Error>) -> Void)) {
        let baseMenuURL = baseURL.appendingPathComponent("menu")
        var components = URLComponents(url: baseMenuURL, resolvingAgainstBaseURL: true)
        components?.queryItems = [URLQueryItem(name: "category", value: categoryName)]
        let menuURL = components?.url!
        
        let task = URLSession.shared.dataTask(with: menuURL!)
        { (data, response, error) in
            
        }
        task.resume()
        
    }
    
    typealias MinutesToPrepare = Int
    
    func submitOrder(forMenuIDs menuIDs: [Int], completion: @escaping ((Result<MinutesToPrepare, Error>) -> Void)) {
        let orderURL = baseURL.appendingPathComponent("order")
        
        var request = URLRequest(url: orderURL)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let data = ["menuIDs": menuIDs]
        let jsonEncoder = JSONEncoder()
        let jsonData = try? jsonEncoder.encode(data)
        
    }
    
}


