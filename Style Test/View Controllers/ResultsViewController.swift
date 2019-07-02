//
//  ResultsViewController.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var styleLabel: UILabel!
    @IBOutlet var styleImageView: UIImageView!
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        let randomIndex = Int.random(in: 0 ..< Style.all.count)
        let style = Style.all[randomIndex]
        styleLabel.text = style.name
        styleImageView.image = style.images.first
    }
}
