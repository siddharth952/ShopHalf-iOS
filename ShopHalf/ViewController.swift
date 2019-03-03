//
//  ViewController.swift
//  ShopHalf
//
//  Created by Siddharth Sen on 15/02/19.
//  Copyright © 2019 Siddharth Sen. All rights reserved.
//

import UIKit
import FirebaseUI
import AVFoundation


class ViewController: UIViewController {

    
    //Outlets
    
    @IBOutlet weak var videoView: UIView!
    

    //Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        //viewDidLoad
        setupView()
       }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        //Register Tapped
        performSegue(withIdentifier: "goToRegister", sender: self)
        
    }
    
    @IBAction func signinButtonTapped(_ sender: Any) {
        //Signin Tapped
        performSegue(withIdentifier: "goToSignIn", sender: self)
    }
    
    
    
    
    
    private func setupView(){
        let path = URL(fileURLWithPath: Bundle.main.path(forResource: "Video1", ofType: "mp4")!)
        let player = AVPlayer(url: path)
        
        let newLayer = AVPlayerLayer(player: player)
        newLayer.frame = self.videoView.frame
        self.videoView.layer.addSublayer(newLayer)
        newLayer.videoGravity = AVLayerVideoGravity.resizeAspectFill
        
        player.play()
        
        
    }
    
    
    
}






