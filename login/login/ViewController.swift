//
//  ViewController.swift
//  login
//
//  Created by الهنوف عبدالله  on 16/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPassword: UIButton!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }

        if sender == forgotUsername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPassword {
            segue.destination.navigationItem.title = "Forgot Password"
        } else {
            segue.destination.navigationItem.title = userName.text
        }
    
    
    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsername)
    }
    
    
    @IBAction func forgotPasswordButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "ForgotUserOrPassword", sender: forgotPassword)
    }
}

