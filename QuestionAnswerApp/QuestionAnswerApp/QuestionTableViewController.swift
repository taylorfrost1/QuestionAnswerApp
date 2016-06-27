//
//  QuestionTableViewController.swift
//  QuestionAnswerApp
//
//  Created by Taylor Frost on 6/27/16.
//  Copyright © 2016 Taylor Frost. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


        
        
    }


    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = "Test"
        
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    


}
