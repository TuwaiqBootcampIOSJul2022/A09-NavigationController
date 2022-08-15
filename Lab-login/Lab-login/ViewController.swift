//
//  ViewController.swift
//  Lab-login
//
//  Created by Kholoud Almutairi on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Unametextfield: UITextField!
    
    @IBOutlet weak var forgotUsername: UIButton!
    
    @IBOutlet weak var forgotPass: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        if sender == forgotUsername{
            
            segue.destination.navigationItem.title = "Forgot Username"
        } else if sender == forgotPass {
            
            segue.destination.navigationItem.title = "Forgot Password"
            
        }else {
            segue.destination.navigationItem.title = Unametextfield.text
        }
    }
    
    

    @IBAction func forgotUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotUsername)
    }
    
  
    @IBAction func forgotPass(_ sender: UIButton) {
        performSegue(withIdentifier: "ForgotUsernameOrPassword", sender: forgotPass)
    }
    
}

