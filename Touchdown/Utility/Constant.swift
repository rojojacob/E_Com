//
//  Constant.swift
//  Touchdown
//
//  Created by wac on 18/07/23.
//

import SwiftUI

// DATA
let player: [Player] = Bundle.main.decode("player.json")
let categories : [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

let sampleProduct: Product = products[0]

//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT
  // setting up the grid view 
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
let feedback = UIImpactFeedbackGenerator(style: .medium)

//API
//IMAGE
//FONT
//STRING
//MISC
