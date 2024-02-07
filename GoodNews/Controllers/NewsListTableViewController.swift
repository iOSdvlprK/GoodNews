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
        
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=59bd1f3a229349a89c524bb078ce24e5")!
        
        Webservice().getArticles(url: url) { _ in
            
        }
    }
}
