//
//  LandingScreen_ViewController.swift
//  A09-NavigationController(Login)
//
//  Created by Anaal Albeeshi on 17/01/1444 AH.
//

import UIKit

class LandingScreen_ViewController: UIViewController {
    var username = ""
    var password = ""
    
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = username

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
