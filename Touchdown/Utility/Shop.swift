//
//  Shop.swift
//  Touchdown
//
//  Created by wac on 19/07/23.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct : Bool  = false
    @Published var selectedProduct: Product? = nil
    
}
