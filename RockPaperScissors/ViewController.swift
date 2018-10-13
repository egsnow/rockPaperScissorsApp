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
    @IBOutlet weak var rulesImage: UIImageView!
    
    
    let rock = 0
    let paper = 1
    let scissors = 2
    let rules = 3
    var compScore = 0
    var playScore = 0
    
    //0 = computer wins
    //1 = player wins
    //2 = tie

    var playerChoice = true
    var computerChoice = false

    @IBAction func rockButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)
        playGame(playSelection: 0, computerSelection: compSelection)
        updateScore()
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)
        playGame(playSelection: 1, computerSelection: compSelection)
        updateScore()
    }
    
    @IBAction func scissorButton(_ sender: UIButton) {
        let compSelection = Int.random(in: 0...2)
        playGame(playSelection: 2, computerSelection: compSelection)
        updateScore()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        playerImage.image = #imageLiteral(resourceName: "Empty")
        computerImage.image = #imageLiteral(resourceName: "Empty")
        rulesImage.image = #imageLiteral(resourceName: "Rules")
        compScore = 0
        playScore = 0
        updateScore()
    }
    
    
    
    
    func playGame(playSelection: Int, computerSelection: Int) -> Int {
        switch playSelection {
        case 0:
            print("rock")
            playerImage.image = #imageLiteral(resourceName: "rock")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        case 1:
            print("paper")
            playerImage.image = #imageLiteral(resourceName: "paper")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        case 2:
            print("scissors")
            playerImage.image = #imageLiteral(resourceName: "scissors")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        default:
            break
        }
        
        switch computerSelection {
        case 0:
            print("rock")
            computerImage.image = #imageLiteral(resourceName: "rock")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        case 1:
            print("paper")
            computerImage.image = #imageLiteral(resourceName: "paper")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        case 2:
            print("scissors")
            computerImage.image = #imageLiteral(resourceName: "scissors")
            rulesImage.image = #imageLiteral(resourceName: "Empty")
        default:
            break
        }
        
        if (playSelection + 1) % 3 == computerSelection {
            print("computer wins")
            compScore += 1
            return 0
        } else if (computerSelection + 1) % 3 == playSelection {
            print("player wins")
            playScore += 1
            return 1
        } else {
            print("tie")
            return 2
        }
        
        
        
        
    }
    
    
    func updateScore() {
        playerScore.text = "Player: \(playScore)"
        computerScore.text = "Computer: \(compScore)"
    }
        
        //update computer image based on random selection of 0, 1 or 2
        
    }
    
    
    
    
    
    
    
    
    
   

    
    
    
    
    
    
    




