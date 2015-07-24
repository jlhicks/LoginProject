//
//  MainViewController.swift
//  LoginProject
//
//  Created by James Hicks on 7/22/15.
//  Copyright (c) 2015 zorch!. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        usernameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kUsernameKey) as? String
        passwordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as? String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
