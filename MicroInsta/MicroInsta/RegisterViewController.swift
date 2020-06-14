//
//  RegisterViewController.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/10/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordText.isSecureTextEntry = true;

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerClicked(_ sender: UIButton) {
        if usernameText.text != "" && emailText.text != "" && passwordText.text != "" {
            Auth.auth().createUser(withEmail: emailText.text!, password: passwordText.text!){ (authdata, error) in
                
                if error != nil {
                    ViewController().makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")
                } else {
                    self.performSegue(withIdentifier: "toHomeVC", sender: nil)
                }
            }
            
        } else {
            ViewController().makeAlert(titleInput: "Error", messageInput: "Invalid username/email/password")

        }
    }
    
}
