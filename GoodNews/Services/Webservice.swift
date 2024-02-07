//
//  Webservice.swift
//  GoodNews
//
//  Created by joe on 2/7/24.
//

import Foundation

class Webservice {
    func getArticles(url: URL, completion: @escaping ([Any]?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print(error.localizedDescription)
                completion(nil)
            } else if let data = data {
                print(data)
            }
        }.resume()
    }
}
