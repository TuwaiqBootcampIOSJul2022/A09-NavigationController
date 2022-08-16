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
    
    @IBOutlet weak var forgotUserNameButton: UIButton!
    
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
// Button_1
    @IBAction func logInButon(_ sender: Any) {
        performSegue(withIdentifier: "LogMove", sender: nil)
    }
    
    // prepare(for:sender:)
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
      guard let sender = sender as? UIButton else {return}
      if sender == forgotPasswordButton {
          segue.destination.navigationItem.title = "Forgot Password"
          
      }else if sender == forgotUserNameButton {
          segue.destination.navigationItem.title = "Forgot Username"
      } else {
          segue.destination.navigationItem.title = text1.text
      }
  }// end preoare
      
    // Button_2
    @IBAction func UsernameButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
          sender: nil)
} // end UsernameButton
    
    // Button_3
    @IBAction func PasswordButton(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword",
          sender: nil)
    } // PasswordButton
    
    
    
}

