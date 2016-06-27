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
        
    }
    
    func questionData() {
        
        let movie = Question(questionString: "What is the most popular movie of all time?", answerString: "The Godfather")
        self.questionsArray.append(movie)
        
        let sport = Question(questionString: "What sport generates most money per year in the United States?", answerString: "The NFL at an average of 13 billion per year")
        self.questionsArray.append(sport)
        
        let app = Question(questionString: "What app is worth the most in the world?", answerString: "Uber at 51 Billion")
        self.questionsArray.append(app)
        
  
        
        
        
    }


    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsArray.count
        
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        self.currentQuestion = self.questionsArray[indexPath.row]
        

        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    


}
