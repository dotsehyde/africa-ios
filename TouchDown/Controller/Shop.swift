//
//  Shop.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import Foundation

class Shop: ObservableObject {
    @Published var detailShown: Bool = false
    @Published var selcetedProduct: Product? = nil
}
