//
//  ViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 15/02/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import FirebaseUI


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
       }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        performSegue(withIdentifier: "goToRegister", sender: self)
        
    }
    
    @IBAction func signinButtonTapped(_ sender: Any) {
        
    }
    
}
