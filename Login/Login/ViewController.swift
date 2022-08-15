//
//  ViewController.swift
//  Login
//
//  Created by Faisal Almutairi on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var userName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: Any) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
        
        guard let sender = sender as? UIButton else {return}
            
        if sender == forgotPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        }else if sender == forgotUserNameButton {
            segue.destination.navigationItem.title = "Forgot Username"
        }else{
            segue.destination.navigationItem.title = userName.text
        }

    }
    
    @IBAction func passwordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserNameOrPassword", sender: sender)

            
    }
    
    @IBAction func userNameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgotUserNameOrPassword", sender: sender)
    }
}

