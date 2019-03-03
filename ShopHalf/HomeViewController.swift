//
//  HomeViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 02/03/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func logoutPressed(_ sender: Any) {
        do{
        try Auth.auth().signOut()
            
            navigationController?.popToRootViewController(animated: true)
        }
        catch{
            print("Error Signing Out!")
        }
        
        
        
    }
    

   

}
