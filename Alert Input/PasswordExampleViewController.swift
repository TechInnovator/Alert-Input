//
//  ViewController.swift
//  Alert Input
//
//  Created by Dale Musser on 4/26/16.
//  Copyright © 2016 Swift Developer Academy. All rights reserved.
//
// http://stackoverflow.com/questions/6319417/whats-a-simple-way-to-get-a-text-input-popup-dialog-box-on-an-iphone

import UIKit

class PasswordExampleViewController: UIViewController {

    @IBOutlet weak var passwordLabel: UILabel!
    
    var password = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordLabel.text = password
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func getPassword(_ sender: AnyObject) {
        let alert = UIAlertController(title: "Password", message: "Enter your account password.", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Submit", style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            if let textField = alert.textFields?[0] {
                self.password = textField.text!
                self.passwordLabel.text = self.password
            }
            
        }))
        alert.addTextField(configurationHandler: {(textField: UITextField!) in
            textField.placeholder = "password"
            textField.isSecureTextEntry = true

        })
        self.present(alert, animated: true, completion: nil)
    }
}

