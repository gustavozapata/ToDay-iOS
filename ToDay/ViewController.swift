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
    var radios = [UIView]()
    var radioY = 252
    var elY = 250
    
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var nothingToDo: UILabel!
    @IBOutlet weak var taskNameInput: UITextField!
    @IBOutlet weak var addTaskBtn: UIButton!
    @IBOutlet weak var cancelAddTaskBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        styleTaskNameInput()
        
        if tasks.isEmpty {
            toggleAddTask(toggle: true)
        }

        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.onSettingsTap))
        settingsLabel.isUserInteractionEnabled = true
        settingsLabel.addGestureRecognizer(tap)
    }
    
    func toggleAddTask(toggle:Bool) {
        taskNameInput.isHidden = toggle
        addTaskBtn.isHidden = toggle
        cancelAddTaskBtn.isHidden = toggle
    }
    
    func styleTaskNameInput() {
        //border bottom
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: taskNameInput.frame.height - 1, width: taskNameInput.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        taskNameInput.borderStyle = UITextField.BorderStyle.none
        taskNameInput.layer.addSublayer(bottomLine)
    }

    @IBAction func onSettingsTap(sender: UITapGestureRecognizer) {
        self.performSegue(withIdentifier: "toSettings", sender: self)
    }
    
    //Add Task btn
    @IBAction func addTaskAction(_ sender: Any) {
        displayNewTask()
    }
    
    func displayNewTask() {
        if !taskNameInput.text!.isEmpty {
            buildTaskLabel()
            buildTaskRadio()
            toggleAddTask(toggle: true)
        }
    }
    
    func buildTaskRadio() {
        let radio = UIView(frame: CGRect(x: 0, y:0, width: 28, height: 28))
        radio.center = CGPoint(x: 45, y: radioY)
        radio.layer.borderWidth = 2
        radio.layer.cornerRadius = 14
        radioY += 55
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.onRadioTap))
        radio.isUserInteractionEnabled = true
        radio.addGestureRecognizer(tap)
        
        radios.append(radio)
        
        for i in 0..<radios.count {
            self.view.addSubview(radios[i])
        }
    }
    
    @IBAction func onRadioTap(sender: UITapGestureRecognizer) {
        
    }
    
    func buildTaskLabel() {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 500, height: 30))
        label.center = CGPoint(x: 320, y: elY)
        elY += 55
        label.font = UIFont.boldSystemFont(ofSize: 27.0)
        
        label.text = taskNameInput.text
        tasks.append(label)
        taskNameInput.text = ""
        
        for i in 0..<tasks.count {
            self.view.addSubview(tasks[i])
        }
    }
    
    //Cancel Add Task btn
    @IBAction func cancelAddTaskAction(_ sender: Any) {
        toggleAddTask(toggle: true)
        taskNameInput.text = ""
    }
    
    //PRESS ENTER
    @IBAction func createNewTaskWithKey(_ sender: Any) {
        displayNewTask()
    }

    //+ BUTTON
    @IBAction func addTaskButton(_ sender: Any) {
        toggleAddTask(toggle: false)
        if tasks.isEmpty {
            nothingToDo.isHidden = true
        }
    }
    
}

