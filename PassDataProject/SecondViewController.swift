//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Лаборатория on 26.11.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let login = self.login else { return }
        label.text = "Hellow, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        
    }
}
