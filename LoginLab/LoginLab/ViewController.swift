//
//  ViewController.swift
//  LoginLab
//
//  Created by NosaibahMW on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUserNameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButton.tintColor = #colorLiteral(red: 1, green: 0.4932718873, blue: 0.4739984274, alpha: 1)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            guard let sender = sender as? UIButton else {return}
                
                switch sender {
                case forgotUserNameButton:
                    if let secondVC = segue.destination as? SecondViewController {
                        secondVC.navigationTitle = "Forgot Username" }
                        
                case forgotPasswordButton:
                    if let secondVC = segue.destination as? SecondViewController {
                        secondVC.navigationTitle = "Forgot Password" }
                
                case loginButton:
                    if let secondVC = segue.destination as? SecondViewController {
                        secondVC.navigationTitle = userNameTextField.text! }
                default:
                    print("There is no title")
                }
                
    }
    
    
    @IBAction func forgotUsernameActionButton(_ sender: Any) {
        performSegue(withIdentifier: "secondSegue", sender: sender)
    }
    @IBAction func forgotPasswordActionButton(_ sender: Any) {
        performSegue(withIdentifier: "secondSegue", sender: sender)
    }
    
}

