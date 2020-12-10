//
//  ResultsViewController.swift
//  RockPaperScissors
//
//  Created by Adriana González Martínez on 11/25/19.
//  Copyright © 2019 Adriana González Martínez. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var userSelection : GameOption!
    
    //TODO: Set up an outlet for the label
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let randomOption = GameOption.init()
        
        switch randomOption {
        case .rock:
            resultImage.image = UIImage(named: "rock")
        case .paper:
            resultImage.image = UIImage(named: "paper")
        case .scissors:
            resultImage.image = UIImage(named: "scissors")
        }
        
        //TODO: Depending on the result, show the legend "You won", "You lost", "It's a tie" in the label
        if userSelection == randomOption{
            resultLabel.text = "It's a tie!"
        }else if userSelection ==  randomOption.weakness{
            resultLabel.text = "You win!"
            
        }else{
            resultLabel.text = "You Lose!"
        }

    }
}
