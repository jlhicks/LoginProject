//
//  LoginViewController.swift
//  LoginProject
//
//  Created by James Hicks on 7/22/15.
//  Copyright (c) 2015 zorch!. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as! CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        let usernameSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kUsernameKey) as! String
        let passwordSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as! String
        println(usernameSavedFromNSUserDefaults)
        println(passwordSavedFromNSUserDefaults)
        
        if usernameTextField.text == usernameSavedFromNSUserDefaults && passwordTextField.text == passwordSavedFromNSUserDefaults {
            self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        }
    }

    @IBAction func createAccountButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }
    
    // CreateAccountViewControllerDelegate
    
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }
}
