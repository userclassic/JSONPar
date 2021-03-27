//
//  FinHubService.swift
//  JSONPar
//
//  Created by Denis Garifyanov on 27.03.2021.
//

import Foundation

enum NewsCategory {
    
    case general, forex, crypto, merger
    
}

protocol NewsCatcher {
    
    func getNewsIn(category: NewsCategory, complition: ((News) -> Void)?) -> News
    
}

class FinHubService {
    
    static let shared: FinHubService = .init(token: "")
    
    let token: String
    
    let baseUrl: URL? = URL(string: "https://finnhub.io/api/v1")
    
    let newsPath: URL? = URL(string: "https://finnhub.io/api/v1/news?category=crypto&token=")
    
    let decoder: JSONDecoder = .init()
    
    init(token: String) {
        self.token = token
    }
    
}

extension FinHubService: NewsCatcher {
    
    func getNewsIn(category: NewsCategory, complition: ((News) -> Void)?) -> News {
        guard let newsPath = newsPath else {
            return []
        }
        var request: URLRequest = .init(url: newsPath)
        
        request.cachePolicy = .useProtocolCachePolicy
        request.timeoutInterval = 10
        
        let session = URLSession.shared
        
        let task = session.dataTask(with: request) { [weak self] (data, resposense, error) in
            print("Data: \(data)\nresponse: \(resposense)\nerror: \(error)")
            guard let data = data else { return }
            let items = try? self?.decoder.decode(News.self, from: data)
            guard let parsedItems = items else { return }
            complition?(parsedItems)
        }
        
        task.resume()
        
        return []
    }
    
}
