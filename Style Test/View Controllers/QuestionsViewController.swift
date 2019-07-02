//
//  QuestionsViewController.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    let questions = Question.all

    override func viewDidLoad() {
        super.viewDidLoad()
        for question in questions {
            print(#line, #function, question.text)
            for answer in question.answers {
                print(answer)
            }
            print()
        }
    }


}

