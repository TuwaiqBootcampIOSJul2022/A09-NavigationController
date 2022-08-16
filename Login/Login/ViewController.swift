
import UIKit

class ViewController: UIViewController {

    @IBOutlet var userName: UITextField!
    @IBOutlet var password: UITextField!
    
    @IBOutlet var forgotUsername: UIButton!
    @IBOutlet var forgotPasseword: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()  }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = userName.text
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotUsername{
            segue.destination.navigationItem.title = "Forgot Username"
        }else if sender == forgotPasseword{
            segue.destination.navigationItem.title = "Forgot Passeword"
        }else{
            segue.destination.navigationItem.title = userName.text
        }
    }
    
    @IBAction func ofrgotUserNameB(_ sender: Any) {
   performSegue(withIdentifier:"fordotUsernameOrPassword", sender:forgotUsername)
    }
    
    @IBAction func forgotPasseword(_ sender: Any) {
  performSegue(withIdentifier:"fordotUsernameOrPassword", sender:forgotPasseword)
    
    }
}

