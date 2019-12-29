//
//  SettingsViewController.swift
//  ToDay
//
//  Created by guquinon on 10/23/19.
//  Copyright © 2019 me.gustavozapata. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var isLunaLLena = false

    @IBOutlet weak var settingsHeading: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func lunaLlenaAction(_ sender: Any) {
        if !isLunaLLena {
            self.view.backgroundColor = UIColor(red: 0.3, green: 0.2, blue: 1.74, alpha: 1)
            settingsHeading.textColor = UIColor(red: 2.5, green: 2.1, blue: 0.0, alpha: 1)
            isLunaLLena = true
        } else {
            self.view.backgroundColor = UIColor.white
            settingsHeading.textColor = UIColor.black
            isLunaLLena = false
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
