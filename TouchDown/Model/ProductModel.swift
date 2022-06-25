//
//  ProductModel.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Double
    let description: String
    let color: [Double]
    
    var bgColor:Color {
        return Color(red: self.color[0], green: self.color[1], blue: self.color[2])
    }
    var formattedPrice:String{
        return "$\(Int(self.price))"
    }
}
