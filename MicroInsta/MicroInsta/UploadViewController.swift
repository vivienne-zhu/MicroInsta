//
//  UploadViewController.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/10/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit
import Firebase

class UploadViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {    
@IBOutlet weak var imageView: UIImageView!

@IBOutlet weak var commentText: UITextField!

@IBOutlet weak var uploadButton: UIButton!

override func viewDidLoad() {
    super.viewDidLoad()

    imageView.isUserInteractionEnabled = true
    let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
    imageView.addGestureRecognizer(gestureRecognizer)
    
}

@objc func chooseImage() {
    
    let pickerController = UIImagePickerController()
    pickerController.delegate = self
    pickerController.sourceType = .photoLibrary
    present(pickerController, animated: true, completion: nil)
    
}


func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    imageView.image = info[.originalImage] as? UIImage
    self.dismiss(animated: true, completion: nil)
}
    

    @IBAction func postButtonClicked(_ sender: UIButton) {
        
    }
    
}
