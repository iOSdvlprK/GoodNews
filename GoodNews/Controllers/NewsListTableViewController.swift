//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by joe on 2/6/24.
//

import UIKit

class NewsListTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        guard let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=\(apiKey)") else {
            print("Invalid URL")
            return
        }
        
        Webservice().getArticles(url: url) { articles in
            for article in articles {
                print("Title: \(article.title)")
                print("Description: \(article.description ?? "")\n")
            }
        }
    }
}
