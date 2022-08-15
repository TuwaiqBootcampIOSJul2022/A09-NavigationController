//
//  ViewController.swift
//  AssessmentA09
//
//  Created by Hessa on 17/01/1444 AH.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var test1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    @IBOutlet weak var forgetusername: UIButton!
    
    @IBOutlet weak var forgetpass: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func breseed(_ sender: Any) {
    
    }
    
    
    @IBAction func forgeusernamebutton(_ sender: Any) {
        //performSegue(withIdentifier: "idDis", sender: nil)
    }
    
    @IBAction func forgetpassbutton(_ sender: Any) {
      
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgetpass {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgetusername {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title = test1.text
        }
    }
    
}

