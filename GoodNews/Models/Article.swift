//
//  Article.swift
//  GoodNews
//
//  Created by joe on 2/7/24.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
