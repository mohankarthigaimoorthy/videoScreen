//
//  ViewController.swift
//  vedio
//
//  Created by Mohan K on 09/12/22.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButton(_ sender: Any) {
        
        let url = Bundle.main.url(forResource: "sample1", withExtension: "mp4")
        let avPlayer = AVPlayer(url: url!)
        let avController = AVPlayerViewController()
        avController.player = avPlayer
        present(avController, animated: true) {
            avPlayer.play()
        }
    }
    
}

