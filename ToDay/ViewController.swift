//
//  ViewController.swift
//  ToDay
//
//  Created by guquinon on 10/6/19.
//  Copyright © 2019 me.gustavozapata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tasks = [UILabel]()
    var elY = 285
    
    @IBOutlet weak var nothingToDo: UILabel!
    @IBOutlet weak var taskNameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if tasks.isEmpty {
            taskNameInput.isHidden = true
        }
    }
    
    //PRESS ENTER
    @IBAction func createNewTaskWithKey(_ sender: Any) {
        if !taskNameInput.text!.isEmpty {
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 30))
            label.center = CGPoint(x: 290, y: elY)
            elY += 50
            label.font = UIFont.boldSystemFont(ofSize: 27.0)
            
            label.text = taskNameInput.text
            tasks.append(label)
            taskNameInput.text = ""
            
            for i in 0..<tasks.count {
                self.view.addSubview(tasks[i])
            }
        }
    }

    //+ BUTTON
    @IBAction func addTaskButton(_ sender: Any) {
        if tasks.isEmpty {
            nothingToDo.isHidden = true
            taskNameInput.isHidden = false
        }
    }
    
}

