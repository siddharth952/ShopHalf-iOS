//
//  RegisterViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 02/03/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func registerPressed(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil{
                print(error!)
                //Inside a Closure
            }else{
                //Successful
                print("Registration Successful!")
                self.performSegue(withIdentifier: "goToHome_R", sender: self)
            }
           
            
        }
    }
    
    

}
