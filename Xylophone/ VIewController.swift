//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AudioToolbox

class ViewController: UIViewController{
    
    func playSound(senderTag: Int) {
        if let soundURL = Bundle.main.url(forResource: "note\(senderTag)", withExtension: "wav") {
            var mySound: SystemSoundID = 0
            AudioServicesCreateSystemSoundID(soundURL as CFURL, &mySound)
            // Play
            AudioServicesPlaySystemSound(mySound);
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        playSound(senderTag: sender.tag)
    }
}

