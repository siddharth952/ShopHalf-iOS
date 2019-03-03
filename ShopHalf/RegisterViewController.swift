//
//  RegisterViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 02/03/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import Firebase
import AVFoundation


class RegisterViewController: UIViewController {


    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

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
    
    
    private func setupView(){
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "Video3", ofType: "mp4")!)
        let player = AVPlayer(url: path)
        
        let newLayer = AVPlayerLayer(player: player)
        newLayer.frame = self.videoView.frame
        self.videoView.layer.addSublayer(newLayer)
        newLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
        player.play()
        
        
    }
    
    

}
