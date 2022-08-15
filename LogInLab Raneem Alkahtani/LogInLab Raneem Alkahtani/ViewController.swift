//
//  ViewController.swift
//  LogInLab Raneem Alkahtani
//
//  Created by Raneem Alkahtani on 15/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var UserName: UITextField!
    
    @IBOutlet weak var UserPssword: UITextField!
    
    @IBOutlet weak var forgotUserName: UIButton!
    
    @IBOutlet weak var forgetPassword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func LogInButtom(_ sender: Any) {
      //  performSegue(withIdentifier: "MoveFirst", sender: sender)
    }

 
    @IBAction func forgotUserNameButton(_ sender: Any)
    {
        performSegue(withIdentifier: "forgotUserNameButton", sender: sender )
    }
    
    
    @IBAction func forgotPasswordButton(_ sender: Any ) {
        performSegue(withIdentifier: "forgotUserNameButton", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: (Any)?) {
       /* if let secondVC = segue.destination as? SecondViewController {
        secondVC.UserName1 = UserName.text!
    }*/

    guard let sender = sender as? UIButton else {return}
    if sender == forgetPassword {
        segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserName {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = UserName.text
        }
     
    }
    
}

