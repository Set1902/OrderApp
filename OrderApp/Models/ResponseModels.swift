//
//  ResponseModels.swift
//  OrderApp
//
//  Created by Sergei Kovalev on 28.07.2022.
//

import Foundation


struct MenuResponse: Codable {
    let items: [MenuItem]
}

struct CategoriesResponse: Codable {
    let categories: [String]
}

struct OrderResponse: Codable {
    let prepTime: Int
    
    enum CodingKeys: String, CodingKey {
        case prepTime = "preparation_time"
    }
}
