//
//  ViewController.swift
//  War
//
//  Created by byunhyeongwon on 2015. 12. 20..
//  Copyright © 2015년 byunhyeongwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstCardImageView: UIImageView!
    @IBOutlet weak var secondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backGroundImageView: UIImageView!
    
    @IBOutlet weak var PlayerScoreLabel: UILabel!
    @IBOutlet weak var EnemyScoreLabel: UILabel!
    
    var playerScore:Int = 0
    var EnemyScore:Int = 0
    
    var carNameArray:[String] = ["card2", "card3", "card4", "card5", "card6", "card7", "card8", "card9", "card10", "card11", "card12", "card13", "card1"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
    
        //Randomize a number for first ImageView
        let firstRandNumber:Int = Int(arc4random_uniform(13))
        
        //Construct a string with the random number
        let firstCardString:String = self.carNameArray[firstRandNumber]
        
        //set the first card image view to the asset corresponding to the randomized number
        self.firstCardImageView.image = UIImage(named: firstCardString)
        
        //Randomize a number for second ImageView
        let secondRandNumber = Int(arc4random_uniform(13))
        
        //Construct a string with the random number
        let secondCardString:String = String(format: "card%i", secondRandNumber)
        
        //set the seconde card image view to the asset corresponding to the randomized number
        self.secondCardImageView.image = UIImage(named: secondCardString)
        
        //self.secondCardImageView.image = UIImage(named: "card11")
        
        //Determine the higher card
        if(firstRandNumber > secondRandNumber) {
            //TODO : first card is larger
            self.playerScore += 1
            self.PlayerScoreLabel.text = String(self.playerScore)
        }
            
        else if(firstRandNumber == secondRandNumber) {
            //TODO : number is equal
        }
        
        else {
            //TODO : second card is larger
            self.EnemyScore += 1
            self.EnemyScoreLabel.text = String(self.EnemyScore)
        }
        
    }

}

