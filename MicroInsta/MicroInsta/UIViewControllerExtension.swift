//
//  UIViewControllerExtension.swift
//  MicroInsta
//
//  Created by Vivienne Zhu on 6/11/20.
//  Copyright © 2020 Vivienne Zhu. All rights reserved.
//

import UIKit

extension UIViewController {
    func makeAlert(titleInput: String, messageInput: String){
        let alert  = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
}
