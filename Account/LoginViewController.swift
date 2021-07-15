//
//  ViewController.swift
//  Account
//
//  Created by Andrii Oliievskyi on 2021-07-14.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var forgotUsernameButton: UIButton!
    @IBOutlet weak var forgotPasswordButton: UIButton!
    
    var username = "User"
    private var password = "Summer2021"
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passwordTF.text = ""
    }
     
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func showAlertButton(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    @IBAction func remindUsername() {
        showAlertButton(title: "Oops, your username is User " , message: "To continue click OK")
    }

    @IBAction func remindPassword() {
        showAlertButton(title: "Tour password is Summer2021", message: "To continue click OK")
    }
    
    @IBAction override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard usernameTF.text == username && passwordTF.text == password else{
            showAlertButton(title: "Your username or password is incorrect!", message: "Please, try again")
            return
        }
        
    }
    
}

