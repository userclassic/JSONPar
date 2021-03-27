//
//  testjs.swift
//  JSONPar
//
//  Created by Владимир Осетров on 26.03.2021.
//

import Foundation

//это модель

struct ModeliN: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var city: String
    var description: String
    var isFavorite: Bool
}
