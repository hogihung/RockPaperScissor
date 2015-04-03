//
//  RockPaperScissorJudgeTest.swift
//  RockPaperScissorSpock
//
//  Created by John F. Hogarty on 4/2/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit
import XCTest

class RockPaperScissorJudgeTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testJudgementWhereUserWins(){
        var winningScenarios = [("Rock", "Scissor"), ("Scissor", "Paper"), ("Paper", "Rock")]
        for scenario in winningScenarios {
            var winnerEnum  = RockPaperScissorJudge.verdict(scenario.0, computerChoice: scenario.1)
            XCTAssertTrue(winnerEnum == .User, "The winner should be the user");
            println("The current scenario is: ")
            println("User: \(scenario.0)")
            println("Computer: \(scenario.1)")
        }
    }
    
    func testJudgementWhereComputerWins() {
        var winningScenarios = [("Rock", "Paper"), ("Scissor", "Rock"), ("Paper", "Scissor")]
        for scenario in winningScenarios {
            var winnerEnum = RockPaperScissorJudge.verdict(scenario.0, computerChoice: scenario.1)
            XCTAssertTrue(winnerEnum == .Computer, "The winner should be the computer")
        }
    }
    
    /*
    func testExample() {
        // This is an example of a functional test case.
        XCTAssert(true, "Pass")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    */
}
