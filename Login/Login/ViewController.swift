//
//  ViewController.swift
//  Login
//
//  Created by Razan Abdullah on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let LandingScreen = segue.destination as? landingScreen {
            LandingScreen.UserN = usernameTextField.text!
        }
    }
    
    @IBAction func forgotUserName(_ sender: Any) {
        performSegue(withIdentifier: "loginSegues", sender: forgotUserNameButton)
    }
    
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "loginSegues", sender: forgotPasswordButton)
    }
 
    
    @IBAction func LoginButton(_ sender: Any) {
    }
}

