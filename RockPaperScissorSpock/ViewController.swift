//
//  ViewController.swift
//  RockPaperScissorSpock
//
//  Created by John F. Hogarty on 3/31/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var playableChoices = ["Rock", "Paper", "Scissors"]

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Load er up baby!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func randomAIChoice() -> String {
        let randomIndex = arc4random_uniform(UInt32(playableChoices.count))
        let randomChoice = playableChoices[randomIndex.hashValue]
        
        return randomChoice
    }


    @IBAction func playGame(sender: UIButton) {
        let playChoice = sender.currentTitle!
        
        println("Computer choose: \(randomAIChoice())")
        println("User pressed the \(playChoice) button")
    }
    
    
}

