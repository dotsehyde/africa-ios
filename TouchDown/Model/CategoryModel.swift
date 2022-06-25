//
//  CategoryModel.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
