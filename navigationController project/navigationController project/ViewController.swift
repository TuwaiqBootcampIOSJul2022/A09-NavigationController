//
//  ViewController.swift
//  navigationController project
//
//  Created by Masheal abdulrhman on 18/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var uesrname: UITextField!
    @IBOutlet weak var forgotusername: UIButton!
    
    @IBOutlet weak var forgotusername: UIButton!
    @IBOutlet weak var forgotPassword: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func forgotPassword(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword" , sender: sender)
    }
    
    @IBAction func butoon(_ sender: Any) {
    }
    

}

 override func prepare(for segue: UIStoryboardSegue, sender: Any?)
{
        segue.destination.navigationItem.title = username.text
        
        guard let sender1 = sender as? UIButton else{return}
           if sender1 == forgotPasswordButton{
            segue.destination.navigationItem.title = "forgot Password"
            }else if sender1 == forgotUserNameButton{
            segue.destination.navigationItem.title = "forgot Username"
            }else{
            segue.destination.navigationItem.title = username.text
                
                
            }
    }
    
