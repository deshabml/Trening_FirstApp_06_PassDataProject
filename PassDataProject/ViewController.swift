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

    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSague", sender: nil)

    }
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        resultLabel.text = svc.label.text
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = loginTF.text
        
    }
}

