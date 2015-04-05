//
//  ResultsViewController.swift
//  RockPaperScissorSpock
//
//  Created by John F. Hogarty on 3/31/15.
//  Copyright (c) 2015 John F. Hogarty. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var winner: String?
    var image:  String?
    
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var resultImage: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        displayResults()
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(0.3) {
            self.resultImage.alpha = 1
        }
    }
    
    private func displayResults() {
        println("DEBUG: Winner is \(winner) Image is \(image)")
        var imageName: String
        var lableText: String
        
        imageName = "\(image!)"
        lableText = "\(winner!)"
        
        println(" W= \(lableText), I= \(imageName) ")
        
        imageName = imageName.lowercaseString
        println("LC: \(imageName)")
        println("TX: \(lableText)")
        resultImage.image = UIImage(named: imageName)
        resultLabel.text = lableText
    }

    @IBAction func dismiss(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    

}
