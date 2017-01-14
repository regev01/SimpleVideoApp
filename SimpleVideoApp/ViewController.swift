//
//  ViewController.swift
//  SimpleVideoApp
//
//  Created by regev1980@gmail.com on 13/01/2017.
//  Copyright © 2017 regev1980@gmail.com. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destination = segue.destination as!
        AVPlayerViewController
        let url = URL(string:"https://content.jwplatform.com/manifests/vM7nH0Kl.m3u8")
        
        if let movieURL = url {
            destination.player = AVPlayer(url: movieURL)
        }
    }
    
}

