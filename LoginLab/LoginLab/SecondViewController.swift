//
//  SecondViewController.swift
//  LoginLab
//
//  Created by NosaibahMW on 17/01/1444 AH.
//

import UIKit

class SecondViewController: UIViewController {

    var navigationTitle:String = ""
    
    @IBOutlet weak var NavigationTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        NavigationTitle.title = navigationTitle
    }
 

}
