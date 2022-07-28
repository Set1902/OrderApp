//
//  MenuItem.swift
//  OrderApp
//
//  Created by Sergei Kovalev on 28.07.2022.
//

import Foundation

struct MenuItem: Codable {
    
    var id: Int
    var name: String
    var detailText: String
    var price: Double
    var category: String
    var imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case datailText = "description"
        case price
        case category
        case imageURL = "image_url"
    }
}

