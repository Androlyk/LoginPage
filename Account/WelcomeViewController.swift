//
//  WelcomeViewController.swift
//  Account
//
//  Created by Andrii Oliievskyi on 2021-07-14.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var logiutButton: UIButton!
    
    let userInfo = LoginViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(userInfo.username)"
    }
    
    @IBAction func logginOut() {
        dismiss(animated: true)
    }
    
}
