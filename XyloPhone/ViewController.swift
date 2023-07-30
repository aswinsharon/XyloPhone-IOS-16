//
//  ViewController.swift
//  XyloPhone
//
//  Created by Aswin Sharon on 30/07/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
     var player: AVAudioPlayer!

    
    @IBAction func keyPressed(_ sender: UIButton) {
        
        playSound(soundPressed:sender.currentTitle!)
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                   //Bring's sender's opacity back up to fully opaque after 0.2 secs
                   sender.alpha = 1.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    func playSound(soundPressed:String) {
        let url = Bundle.main.url(forResource: soundPressed, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player!.play()
    }

}

