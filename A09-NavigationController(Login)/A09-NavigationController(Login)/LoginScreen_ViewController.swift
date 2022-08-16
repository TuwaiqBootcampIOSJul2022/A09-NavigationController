//
//  ViewController.swift
//  A09-NavigationController(Login)
//
//  Created by Anaal Albeeshi on 17/01/1444 AH.
//

import UIKit

class LoginScreen_ViewController: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func logInButon(_ sender: Any) {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == PasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == UsernameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = usernameTextField.text1
        }
        
//        print("Moving")
//        if segue.identifier == "LogMove" {
//            print("Show Name")
//            if let secondVC = segue.destination as? LandingScreen_ViewController {
//                secondVC.username = text1.text!
//                secondVC.password = text2.text!
//            }// end if let
            
}
    } // end preoare
    
    
    @IBAction func UsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
           sender: sender)
        
//        guard let sender = sender as? UIButton else {return}
//
//        if sender == PasswordButton {
//            segue.destination.navigationItem.title = "Forgot Password"
//        } else if sender == UsernameButton {
//            segue.destination.navigationItem.title = "Forgot Username"
//        } else {
//            segue.destination.navigationItem.title = usernameTextField.text1
//        }
//
        
} // end UsernameButton
    
    
    @IBAction func PasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
           sender: sender)
        
    } // PasswordButton
    
    
    
}

