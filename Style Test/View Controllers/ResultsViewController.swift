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
    
    var styleIDs = [Int]()
    
    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        var styleRating = [Int: Int]()
        styleIDs.forEach { styleRating[$0] = (styleRating[$0] ?? 0) + 1 }
        let topStyleID = styleRating.sorted(by: { $0.value > $1.value }).first!.key
        let topStyle = Style.all.first(where: { $0.id == topStyleID })!
        
        navigationItem.hidesBackButton = true
        styleLabel.text = topStyle.name
        styleImageView.image = topStyle.images.first
    }
}
