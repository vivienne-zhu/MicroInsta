//
//  ViewController.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/10/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth


class ViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // This method directs users to the feed page if signed in successfully.
    // Else an error message is displayed.
    @IBAction func signInClicked(_ sender: UIButton) {
        if emailText.text != "" && passwordText.text != ""{
            Auth.auth().signIn(withEmail: emailText.text!, password: passwordText.text!) { (authdata, error) in
                if error != nil {
                ViewController().makeAlert(titleInput: "Error!", messageInput: error?.localizedDescription ?? "Error")
                } else {
                    self.performSegue(withIdentifier: "toFeedVC", sender: nil)
                }
            }
        } else {
            self.makeAlert(titleInput: "Error", messageInput: "Invalid Email/Password")
        }
    }
    
    
    @IBAction func registerClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toRegisterVC", sender: nil)
    }
    
    func makeAlert(titleInput: String, messageInput: String){
        let alert  = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
    
}

