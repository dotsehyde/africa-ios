//
//  JsonExt.swift
//  TouchDown
//
//  Created by Benjamin on 25/06/2022.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Couldn't locate \(file) in bulde")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Couldn't read data from file")
        }
        let decoder = JSONDecoder()
        guard let dData = try? decoder.decode(T.self, from: data) else {
            fatalError("Couldn't decode data from file")
        }
        return dData
    }
}
