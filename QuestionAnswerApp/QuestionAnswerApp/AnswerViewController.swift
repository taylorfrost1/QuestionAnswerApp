//
//  AnswerViewController.swift
//  QuestionAnswerApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class AnswerViewController: UIViewController {
    
    var passedQuestion : Question?
    var answersArray = [String]()

    @IBOutlet weak var questionAnswerLabel: UILabel!
    @IBOutlet weak var OneButton: UIButton!
    @IBOutlet weak var TwoButton: UIButton!
    @IBOutlet weak var ThreeButton: UIButton!
    @IBOutlet weak var FourButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.questionAnswerLabel.text = passedQuestion?.questionString
        
        return answerData()
        
    }
    
    func answerData(){
        
        let kane = "Citizen Kane"
        self.answersArray.append(kane)
        let starwars = "StarWars: A New Hope"
        self.answersArray.append(starwars)
        let wind = "Gone With the Wind"
        self.answersArray.append(wind)
        let soccer = "Soccer"
        self.answersArray.append(soccer)
        let basketball = "Basketball"
        self.answersArray.append(basketball)
        let baseball = "Baseball"
        self.answersArray.append(baseball)
        let snapchat = "Snapchat"
        self.answersArray.append(snapchat)
        let instagram = "Instagram"
        self.answersArray.append(instagram)
        let fiverr = "Fiverr"
        self.answersArray.append(fiverr)
        
        let randomIndex = Int(arc4random_uniform(UInt32(answersArray.count)))
        print(answersArray[randomIndex])
        
        }
    
    }
    


    

