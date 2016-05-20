//
//  ArticleViewModel.swift
//  Article
//
//  Created by Bruno Da luz on 18/05/16.
//  Copyright © 2016 studies. All rights reserved.
//

import Foundation
import UIKit

protocol ArticleDataSource {
    var title:String { get }
    var body:String  { get }
    var date:String  { get }
    var banner: UIImage? { get }
}

class ArticleViewModel: ArticleDataSource {
    
    let article: Article
    var title: String
    var body: String
    var date: String
    var banner: UIImage?
    
    init(_ article: Article) {
        self.article = article
        
        self.title = article.title
        self.body = article.body
        
        let formatter = NSDateFormatter()
        formatter.dateStyle = NSDateFormatterStyle.ShortStyle
        self.date = formatter.stringFromDate(article.date)
    }

}