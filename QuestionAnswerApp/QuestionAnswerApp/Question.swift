//
//  Question.swift
//  QuestionAnswerApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import Foundation

struct Question {
    
    var questionString: String = ""
    var answerString: String = ""
    
    init(questionString:String, answerString:String){
        self.questionString = questionString
        self .answerString = answerString
    }
}
