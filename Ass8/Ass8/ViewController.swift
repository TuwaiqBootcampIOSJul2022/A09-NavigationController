//
//  ViewController.swift
//  Ass8
//
//  Created by REOF ALMESHARI on 16/08/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var forgetUsername: UIButton!
    @IBOutlet weak var forgetUserPass: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender  as? UIButton else {
            return
        }
        if sender == forgetUsername{
            segue.destination.navigationItem.title = "Forget username "
        }else if sender == forgetUserPass {
            segue.destination.navigationItem.title = "Forget Password"
        }else {
            segue.destination.navigationItem.title = usernameField.text
        }
    }

    @IBAction func forgetUsernameBtn(_ sender: Any) {
        performSegue(withIdentifier: "main", sender: sender)
    }
    
    @IBAction func forgetPassBtn(_ sender: Any) {
        performSegue(withIdentifier: "main", sender: sender)
    }
}

