//
//  Webservice.swift
//  GoodNews
//
//  Created by joe on 2/7/24.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping ([Article]) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Error fetching data: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("No data received")
                return
            }
            
            do {
                let articleList = try JSONDecoder().decode(ArticleList.self, from: data)
                completion(articleList.articles)
            } catch {
                print("Error decoding data: \(error.localizedDescription)")
            }
        }.resume()
    }
}
