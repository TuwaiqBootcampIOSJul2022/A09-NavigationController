//
//  ViewController.swift
//  Login
//
//  Created by Maan Abdullah on 15/08/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var forgetUserNameButton: UIButton!
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {
            return
        }
        if sender == forgetUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        else if sender == forgetPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else{
            segue.destination.navigationItem.title = userNameTextField.text
        }
    }
    @IBAction func forgetUserName(_ sender: UIButton) {
        performSegue(withIdentifier: "fromLoginToHome", sender: sender)
    }
    
    @IBAction func forgetPassword(_ sender: UIButton) {
        performSegue(withIdentifier: "fromLoginToHome", sender: sender)
    }
}

