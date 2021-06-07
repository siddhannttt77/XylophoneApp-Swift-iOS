//
//  ViewController.swift
//  Xylophone
//
//  Created by Siddhant on 15/05/2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
      playSound(soundName: sender.currentTitle!)

      
      sender.alpha = 0.5
        print("start")

      
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
      
          sender.alpha = 1.0
        print("Stop")
      }
    }

    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }



}
