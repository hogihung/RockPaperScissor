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
        var imageName: String
        var lableText: String
        
        imageName = "\(image!)"
        lableText = "\(winner!)"
        
        resultLabel.text = lableText
        resultImage.image = UIImage(named: imageName)
        resultImage.alpha = 0
    }

    @IBAction func dismiss(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
}
