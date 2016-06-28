//
//  QuestionTableViewController.swift
//  QuestionAnswerApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    var questionsArray = [Question]()
    var currentQuestion = Question(questionString: "", answerString: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        return questionData()
        
    }
    
    func questionData() {
        
        let movie = Question(questionString: "What is the most popular movie of all time?", answerString: "The Godfather")
        self.questionsArray.append(movie)
        
        let sport = Question(questionString: "What popular sport in the United States generates most money per year?", answerString: "The NFL at an average of 13 billion per year")
        self.questionsArray.append(sport)
        
        let app = Question(questionString: "What app is worth the most?", answerString: "Uber at 51 Billion")
        self.questionsArray.append(app)
   
    }


    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.questionsArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! QuestionTableViewCell
        
        self.currentQuestion = self.questionsArray[indexPath.row]
        
        cell.questionLabel?.text = currentQuestion.questionString
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.currentQuestion = self.questionsArray[indexPath.row]
        
        performSegueWithIdentifier("AnswerSegue", sender: nil)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "AnswerSegue") {
            if let controller = segue.destinationViewController as? AnswerViewController {
                controller.passedQuestion = self.currentQuestion
            }
        }
    }

}
