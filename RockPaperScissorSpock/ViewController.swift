//
//  ViewController.swift
//  RockPaperScissorSpock
//
//  Created by John F. Hogarty on 3/31/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var winner: String?
    var gameImage: String?
    
    var playableChoices = ["Rock", "Paper", "Scissor"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func randomAIChoice() -> String {
        let randomIndex = arc4random_uniform(UInt32(playableChoices.count))
        let randomChoice = playableChoices[randomIndex.hashValue]
        
        return randomChoice
    }
    
    func chooseWinner(user: String, computer: String) -> (String, String) {
        var winnerEnum = RockPaperScissorJudge.verdict(user, computerChoice: computer)
        
        if winnerEnum == .User {
            winner = "User"
            gameImage = chooseImage(user)
        } else if winnerEnum == .Computer {
            winner = "Computer"
            gameImage = chooseImage(computer)
        } else {
            winner = "Tie"
            gameImage = "tie"
        }
        println("Winner: \(winner!), Result Image: \(gameImage!)")
        return (winner!, gameImage!)
    }
    
    func chooseImage(image: String) -> String {
        switch image {
            case "Rock":
              return "rock-pounds-scissor"
            case "Paper":
              return "paper-wraps-rock"
            case "Scissor":
              return "scissor-cuts-paper"
            default:
              return "tie"
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController as ResultsViewController
        
        controller.winner = self.winner
        controller.image = self.gameImage
        
    }

    @IBAction func playGame(sender: UIButton) {
        let playersChoice = sender.currentTitle!
        let randomChoice = randomAIChoice()
        
        chooseWinner(playersChoice, computer: randomChoice)
        
        performSegueWithIdentifier("displayResult", sender: self)
    }
    
}
