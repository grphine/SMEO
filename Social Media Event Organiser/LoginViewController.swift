//
//  LoginViewController.swift
//  Social Media Event Organiser
//
//  Created by Seena Shafai on 18/04/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func SignInAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            if error != nil
            {
                print(error!)
            }
            else{
                print("login successful")
                self.performSegue(withIdentifier: "passedLogin", sender: self)
            }
        }
    }
    
    @IBAction func RegisterAction(_ sender: Any)
    {
        print("To Register View")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    


}
