//
//  RockPaperScissorJudge.swift
//  RockPaperScissorSpock
//
//  Created by John F. Hogarty on 4/2/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import Foundation

enum Judgment {
    case User, Computer, Tie
}

struct RockPaperScissorJudge{
    static func verdict(userChoice: String, computerChoice: String)-> Judgment {
        println("User Choice: \(userChoice)", "Computer Choice: \(computerChoice)")
        
        switch (userChoice, computerChoice) {
        
        case ("Rock", "Paper"):
            println("Winner: Computer")
            return .Computer
        case ("Scissor", "Rock"):
            println("Winner: Computer")
            return .Computer
        case ("Paper", "Scissor"):
            println("Winner: Computer")
            return .Computer
        case ("Rock", "Scissor"):
            println("Winner: User")
            return .User
        case ("Scissor", "Paper"):
            println("Winner: User")
            return .User
        case ("Paper", "Rock"):
            println("Winner: User")
            return .User
        default:
            println("We have a Tie!")
            return .Tie
        }
    }
}
