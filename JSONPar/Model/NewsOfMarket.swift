//
//  NewsOfMarket.swift
//  JSONPar
//
//  Created by Denis Garifyanov on 27.03.2021.
//

import Foundation

// MARK: - NewsElement
struct ItemOfNews: Codable {
    let category: String
    let datetime: Int
    let headline: String
    let id: Int
    let image: String
    let related, source, summary: String
    let url: String
}

typealias News = [ItemOfNews]

extension ItemOfNews: Identifiable {
    
}
