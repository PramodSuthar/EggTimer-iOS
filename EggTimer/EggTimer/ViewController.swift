//
//  ViewController.swift
//  EggTimer
//
//  Created by Pramod Suthar on 06/06/2020.
//  Copyright © 2020 Pramod Suthar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let eggTime = ["softTime" : 3 , "mediumTime" : 4 , "hardTime" :7]

    var secondsRemaining = 60
    
    var timer = Timer()
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        secondsRemaining = eggTime[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        
    }
    
    @objc func updateTimer() {
        if secondsRemaining > 0 {
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        } else {
            timer.invalidate()
            timerLabel.text = "DONE!"
        }
        
        
        
        
        
            
    }

}
