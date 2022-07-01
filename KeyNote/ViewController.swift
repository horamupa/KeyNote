//
//  ViewController.swift
//  KeyNote
//
//  Created by MM on 01.07.2022.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var player: AVAudioPlayer?
    
    
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(nani: sender.titleLabel?.text ?? " LOL")
        sender.alpha = 0.5

          //Code should execute after 0.2 second delay.
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
              //Bring's sender's opacity back up to fully opaque.
              sender.alpha = 1.0
          }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func playSound(nani: String) {
        
        let url = Bundle.main.url(forResource: nani, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
        
    }
//    func playSound() {
//        guard let path = Bundle.main.path(forResource: "C", ofType:"wav") else {
//            return }
//        let url = URL(fileURLWithPath: path)
//
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            player?.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
    
}

