//
//  APICaller.swift
//  UpToDate
//
//  Created by Bektur Mamytov on 30/4/23.
//

import Foundation

final class APICaller {
    static let shared = APICaller()
    
    struct Constants {
        static let apiKey = API.key
        static let topHeadlinesURL = URL(string: "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=\(apiKey)")
        
    }
    private init() {}
    
    public func getTopStories(completion: @escaping (Result<[Article], Error>)-> Void) {
        guard let url = Constants.topHeadlinesURL else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            if let error = error {
                completion(.failure(error))
            } else if let data = data {
                do {
                    let result = try JSONDecoder().decode(APIResponse.self, from: data)
                    
                    print("Articles: \(result.articles.count)")
                    completion(.success(result.articles))
                }
                catch {
                    completion(.failure(error))
                }
            }
        }
        
        task.resume()
    }
}
