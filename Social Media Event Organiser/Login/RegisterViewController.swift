//
//  RegisterViewController.swift
//  Social Media Event Organiser
//
//  Created by Seena Shafai on 18/04/2018.
//  Copyright © 2018 Seena Shafai. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func registerAction(_ sender: Any)
    {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil{
                print(error as Any)
                self.failureAlert()
                print("firebase validation error")
            }
            else
            {
                print("success")
                self.successAlert()
                
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    func successAlert() {
        
        let alertController = UIAlertController(title: "Alert", message: "Registration Successful", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Continue to Sign In", style: .default) { (action:UIAlertAction) in
            self.navigationController?.popToRootViewController(animated: true);
        }
        
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
    }
    
    func failureAlert() {
        
        let alertController = UIAlertController(title: "Alert", message: "Registration Failed\nPlease check your email and password", preferredStyle: .alert)
        
        let action1 = UIAlertAction(title: "Cancel", style: .default) { (action:UIAlertAction) in
            print("failed");
        }
        
        alertController.addAction(action1)
        self.present(alertController, animated: true, completion: nil)
        
    }
    



}
