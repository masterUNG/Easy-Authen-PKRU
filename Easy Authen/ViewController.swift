//
//  ViewController.swift
//  Easy Authen
//
//  Created by MasterUNG on 7/26/2560 BE.
//  Copyright © 2560 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    let strDicUser = ["master": "12345", "dora": "1234"]
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
        //Get Value From TextField
        let strUser: String = userTextField.text!
        let strPassword: String = passwordTextField.text!
        
        print("User ==> \(strUser)")
        print("Password ==> \(strPassword)")
        
        //Check User
        if let strMyPassword = strDicUser[strUser] {
            print("User OK")
            
            //Check Password
            if strMyPassword == passwordTextField.text {
                messageLabel.text = "Welcome User"
            }   else {
                messageLabel.text = "Please Try Again Password False"
            }
            
        }   else {
            print("User False")
            messageLabel.text = "No This User in my Database"
        }
        
        
        
    }   // loginButton
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

