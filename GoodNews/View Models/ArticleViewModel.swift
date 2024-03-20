//
//  ArticleViewModel.swift
//  GoodNews
//
//  Created by joe on 3/20/24.
//

import Foundation

struct ArticleListViewModel {
    let articles: [Article]
}

extension ArticleListViewModel {
    var numberOfSections: Int {
        return 1
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return self.articles.count
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = self.articles[index]
        return ArticleViewModel(article)
    }
}

struct ArticleViewModel {
    private let article: Article
    
    var title: String {
        self.article.title
    }
    
    var description: String {
        self.article.description ?? ""
    }
    
    init(_ article: Article) {
        self.article = article
    }
}
