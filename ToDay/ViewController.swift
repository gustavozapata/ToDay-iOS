//
//  ViewController.swift
//  ToDay
//
//  Created by guquinon on 10/6/19.
//  Copyright © 2019 me.gustavozapata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nothingToDo: UILabel!
    
    @IBOutlet weak var taskNameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskNameInput.isHidden = true
    }

    @IBAction func addTaskButton(_ sender: Any) {
        nothingToDo.isHidden = true
        taskNameInput.isHidden = false
    }
    
}

