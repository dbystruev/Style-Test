//
//  QuestionsViewController.swift
//  Style Test
//
//  Created by Denis Bystruev on 01/07/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

class QuestionsViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var tableView: UITableView!
    @IBOutlet var progressView: UIProgressView!
    
    // MARK: - Stored Properties
    let questions = Question.all
    var questionIndex = 0
    
    // MARK: - Computed Properties
    var currentQuestion: Question {
        return questions[questionIndex]
    }
    
    var answers: [Answer] {
        return currentQuestion.answers
    }

    // MARK: - UIViewController Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        updateUI()
    }

    // MARK: - UI Methods
    func updateUI() {
        let progress = (Float(questionIndex) + 0.5) / Float(questions.count)
        
        navigationItem.title = "Вопрос № \(questionIndex + 1) из \(questions.count)"
        questionLabel.text = currentQuestion.text
        progressView.progress = progress
        tableView.reloadData()
        tableView.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
    }
    
    // MARK: - Navigation
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
        questionIndex = 0
        updateUI()
    }

    // MARK: - Actions
    @IBAction func nextQuestionButtonPressed(_ sender: UIButton) {
        questionIndex += 1
        if questionIndex < questions.count {
            updateUI()
        } else {
            performSegue(withIdentifier: "ResultsSegue", sender: nil)
        }
    }
}

// MARK: - UITableViewDataSource
extension QuestionsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return answers.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let answer = answers[section]
        return answer.images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let answer = answers[indexPath.section]
        let cell: UITableViewCell
        let row = indexPath.row
        if row < answer.images.count {
            cell = tableView.dequeueReusableCell(withIdentifier: "ImageCell", for: indexPath)
            let imageView = cell.contentView.subviews.first as? UIImageView
            imageView?.image = answer.images[row]
        } else {
            cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
            let label = cell.contentView.subviews.first as? UILabel
            label?.text = answer.text
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        let answer = answers[section]
        return answer.text
    }
}

extension QuestionsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let answer = answers[indexPath.section]
        let cellWidth = tableView.bounds.size.width
        let imageSize = answer.images[indexPath.row].size
        return imageSize.height * cellWidth / imageSize.width
    }
}
