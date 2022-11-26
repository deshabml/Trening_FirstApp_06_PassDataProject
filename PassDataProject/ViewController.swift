//
//  ViewController.swift
//  PassDataProject
//
//  Created by Лаборатория on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!

    @IBAction func loginTapped(_ sender: UIButton) {
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

