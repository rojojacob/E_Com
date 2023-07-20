//
//  ProductModel.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import Foundation

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description : String
    let color : [Double ]
    
    //comuted properties
    
    var red : Double {
        return color[0]
    }
    var green : Double {
        return color[1]
    }
    var blue : Double {
        return color[2]
    }
    
    var formattedPrice: String {
        return "$\(price)"
    }
}
