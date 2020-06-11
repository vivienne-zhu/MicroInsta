//
//  SettingsViewController.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/10/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: UIButton) {
        do {
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("error")
        }


    }
}
