//
//  ViewController.swift
//  Assignment88
//
//  Created by Ruba on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func forgotPasswordAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword" , sender: sender)
    }
    @IBAction func forgotUserNameAction(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = username.text
        
        guard let sender1 = sender as? UIButton else{return}
           if sender1 == forgotPasswordButton{
            segue.destination.navigationItem.title = "Forgot Password"
            }else if sender1 == forgotUserNameButton{
            segue.destination.navigationItem.title = "Forgot Username"
            }else{
            segue.destination.navigationItem.title = username.text
            }
    }
    }
    


