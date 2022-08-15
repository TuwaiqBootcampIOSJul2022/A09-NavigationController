import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
            
            guard let sender = sender as? UIButton else {return}

            if sender == forgotPasswordButton {
                segue.destination.navigationItem.title = "Forgot Password"
            } else if sender == forgotUsernameButton {
                segue.destination.navigationItem.title = "Forgot Username"
            } else {
                segue.destination.navigationItem.title = usernameTextField.text
            }

    }

    @IBAction func forgotUsernameBtn(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotUsernameButton)
    }
    
    @IBAction func forgotPasswordBtn(_ sender: Any) {
        performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
    }
    
}

