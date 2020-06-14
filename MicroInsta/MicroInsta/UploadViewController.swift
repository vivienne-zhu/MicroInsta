//
//  UploadViewController.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/10/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit

class UploadViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var commentText: UITextField!
    
    @IBOutlet weak var postButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true;
    }
    
    

    @IBAction func postButtonClicked(_ sender: UIButton) {
        
    }
    
}
