//
//  ViewController.swift
//  logIn
//
//  Created by user on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotpassword: UIButton!
    @IBOutlet weak var forgoUsername: UIButton!
    @IBOutlet weak var userPassword: UITextField!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }

    @IBAction func logInUser(_ sender: Any) {
        performSegue(withIdentifier:  "ForgottenUsernameOrPassword", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotpassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgoUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
       
    }
    
}

