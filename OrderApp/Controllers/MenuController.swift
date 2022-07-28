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
        
    }
    
    func fetchMenuItems(forCategory categoryName: String, completion: @escaping ((Result<[MenuItem], Error>) -> Void)) {
        
    }
    
    func submitOrder(forMenuIDs menuIDs: [Int], completion: @escaping ((Result<Int, Error>) -> Void)) {
        
    }
    
}


