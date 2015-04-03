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
        switch (userChoice, computerChoice) {
        case ("Rock", "Paper"):
            return .Computer
        case ("Scissor", "Rock"):
            return .Computer
        case ("Paper", "Scissor"):
            return .Computer
        case ("Rock", "Scissor"):
            return .User
        case ("Scissor", "Paper"):
            return .User
        case ("Paper", "Rock"):
            return .User
        default:
            return .Tie
        }
    }
}