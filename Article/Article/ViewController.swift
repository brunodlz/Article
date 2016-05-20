//
//  ViewController.swift
//  Article
//
//  Created by Bruno Da luz on 18/05/16.
//  Copyright © 2016 studies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var bannerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var bodyTextView: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let article = Article()
        article.title = "MVVM"
        article.body = "iOS Developer"
        
        let viewModel = ArticleViewModel(article)
        titleLabel.text = viewModel.title
        dateLabel.text = viewModel.date
        bodyTextView.text = viewModel.body
        bannerImageView.image = viewModel.banner
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

