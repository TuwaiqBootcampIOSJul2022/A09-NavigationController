//
//  ViewController.swift
//  LapLogin
//
//  Created by AlenaziHazal on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var UsernameText: UITextField!
    
    @IBOutlet weak var PasswordText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func forgotUserNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    @IBAction func forgotPassWordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    @IBAction func logingButten(_ sender: Any) {
        performSegue(withIdentifier:"register", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
        if segue.identifier == "register"{
            if UsernameText.text == "Hazal"{
                segue.destination.navigationItem.title = UsernameText.text
             if PasswordText.text == "Hazal1"{
                 segue.destination.navigationItem.title = UsernameText.text
                        }else{
                segue.destination.navigationItem.title = UsernameText.text
                        }
        }
        }
        
        if segue.identifier == "ForgottenUsernameOrPassword" {
           guard let sender = sender as? UIButton else {return}
            if sender != sender {
            segue.destination.navigationItem.title = "Forgot Password"
            }else if sender == sender {
            segue.destination.navigationItem.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = "Are You Lost?"
        }
}

}
}

