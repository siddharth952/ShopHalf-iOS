//
//  LoginViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 02/03/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import Firebase
import AVFoundation



class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var videoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()

    }
    
    @IBAction func signinButtonPressed(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            
            //Check For Errors
            if error == nil {
                print("Login Successful!")
                self.performSegue(withIdentifier: "goToHome_L", sender: self)
                
            }else{
                print(error!)
            }
            
        }
    }
    



private func setupView(){
    let path = URL(fileURLWithPath: Bundle.main.path(forResource: "Video2", ofType: "mp4")!)
    let player = AVPlayer(url: path)
    
    let newLayer = AVPlayerLayer(player: player)
    newLayer.frame = self.videoView.frame
    self.videoView.layer.addSublayer(newLayer)
    newLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
    
    player.play()
    
    
            }
}
