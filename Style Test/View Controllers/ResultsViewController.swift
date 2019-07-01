//
//  ResultsViewController.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var styleLabel: UILabel!
    @IBOutlet var styleImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let randomIndex = Int.random(in: 0 ..< Style.all.count)
        let style = Style.all[randomIndex]
        styleLabel.text = style.name
        styleImageView.image = style.images.first
    }
}
