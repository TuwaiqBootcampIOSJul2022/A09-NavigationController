//
//  ViewController.swift
//  LoginLab
//
//  Created by Waad on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var PaswordTextField: UITextField!
    
    @IBOutlet weak var forgotUserName: UIButton!
    
    @IBOutlet weak var forgetPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButton(_ sender: Any) {
    }
   
    @IBAction func ForgetUsernameButton(_ sender: Any) {
        
        performSegue(withIdentifier: "Forget", sender: sender)
        
    }
    
    
    @IBAction func ForgetPasswordButton(_ sender: Any) {
       
        performSegue(withIdentifier: "Forget", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = usernameTextField.text
        

        guard let sender = sender as? UIButton else {return}
        
        if sender == forgetPassword
        {
            segue.destination.navigationItem.title = "Forgot Password"
        }
        else
        if sender == forgotUserName
        {
            segue.destination.navigationItem.title = "Forgot Username"
        }
        


    }
}

