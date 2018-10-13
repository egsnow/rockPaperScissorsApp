//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Eric Snow on 10/5/18.
//  Copyright © 2018 Eric Snow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var computerScore: UILabel!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    let rock = 0
    let paper = 1
    let scissors = 2
    let rules = 3
    
    
    
    //0 = computer wins
    //1 = player wins
    //2 = tie
    
    
    
    var playerChoice = true
    var computerChoice = false

    @IBAction func rockButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)

        playGame(playSelection: 0, computerSelection: compSelection)

    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)

        playGame(playSelection: 1, computerSelection: compSelection)


    }
    
    @IBAction func scissorButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)

        playGame(playSelection: 2, computerSelection: compSelection)

    }
    
    
    
    func playGame(playSelection: Int, computerSelection: Int) -> Int {
        switch playSelection {
        case 0:
            print("rock")
            playerImage.image = #imageLiteral(resourceName: "rock")
        case 1:
            print("paper")
            playerImage.image = #imageLiteral(resourceName: "paper")
        case 2:
            print("scissors")
            playerImage.image = #imageLiteral(resourceName: "scissors")
        default:
            break
        }
        
        switch computerSelection {
        case 0:
            print("rock")
            computerImage.image = #imageLiteral(resourceName: "rock")
        case 1:
            print("paper")
            computerImage.image = #imageLiteral(resourceName: "paper")
        case 2:
            print("scissors")
            computerImage.image = #imageLiteral(resourceName: "scissors")
        default:
            break
        }
        
        if (playSelection + 1) % 3 == computerSelection {
            print("computer wins")
            return 0
        } else if (computerSelection + 1) % 3 == playSelection {
            print("player wins")
            return 1
        } else {
            print("tie")
            return 2
        }
        
        
        
        
    }
    
    

        
        //update computer image based on random selection of 0, 1 or 2
        
    }
    
    
    
    
    
    
    
    
    
   

    
    
    
    
    
    
    




