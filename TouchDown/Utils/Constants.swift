//
//  Constants.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import SwiftUI
//Data
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

//Colors
let backgroundColor = Color("ColorBackground")
let grayColor = Color(.systemGray4)

//Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)

}
