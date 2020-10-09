//
//  ViewController.swift
//  app2
//
//  Created by Ally Zhang on 9/15/20.
//  Copyright © 2020 Ally Zhang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ticTacToe: UILabel!
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var status: UILabel!
    
    @IBOutlet var allButtons: [UIButton]!
    
    var currPlayer = 1
    var gameStatus = true
    var moves = 0
    
    enum Button {
        case empty
        case x
        case o
    }
    
    struct Score {
        var p1: Int
        var p2: Int
    }

    var gameBoard = [Button](repeating: Button.empty, count: 9)
    
    let winningStates = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
                         [0, 3, 6], [1, 4, 7], [2, 5, 8],
                         [0, 4, 8], [2, 4, 6]]
    
    var score = Score(p1: 0, p2: 0)
    
    let buttonImageX = UIImage(named: "mark-x")?.withRenderingMode(.alwaysTemplate)
    let buttonImageO = UIImage(named: "mark-o")?.withRenderingMode(.alwaysTemplate)
    let buttonImageNone = UIImage(named: "mark-none")?.withRenderingMode(.alwaysTemplate)
    
    @IBAction func buttonClick(_ sender: UIButton) {
        
        //if button is valid
        if (gameBoard[sender.tag - 1] == Button.empty && gameStatus) {
            
            //set all buttons blue
            for button in self.allButtons {
                button.tintColor = .systemBlue
            }
            
            if (currPlayer == 1) {
                gameBoard[sender.tag - 1] = Button.x
                currPlayer = 2
                sender.setImage(buttonImageX, for: .normal)
            } else if (currPlayer == 2) {
                gameBoard[sender.tag - 1] = Button.o
                currPlayer = 1
                sender.setImage(buttonImageO, for: .normal)
            }
            moves+=1
            
            //check if win
            for state in winningStates {
                if (gameBoard[state[0]] != Button.empty &&
                        gameBoard[state[0]] == gameBoard[state[1]] && gameBoard[state[1]] == gameBoard[state[2]]) {
                    status.textColor = UIColor.green
                    if (gameBoard[state[0]] == Button.x) {
                        status.text = "Player 1 Wins"
                        score.p1+=1
                        player1.text = "Player 1 Score: \(score.p1)"
                        
                    } else {
                        status.text = "Player 2 Wins"
                        score.p2+=1
                        player2.text = "Player 2 Score: \(score.p2)"
                    }
                    
                    //highlight winning buttons
                    for ind in state {
                        let button = self.view.viewWithTag(ind + 1) as? UIButton
                        button!.tintColor = .systemYellow
                    }
                    gameStatus = false
                    return
                }
            }
            
            //check if board is full for Draw
            if (moves == gameBoard.count) {
                status.textColor = UIColor.blue
                status.text = "Draw"
                gameStatus = false
                for button in self.allButtons {
                    button.tintColor = .systemGray
                }
                return
            }
            status.text = "Player \(currPlayer)'s turn"
        }
    }
    
    @IBAction func clearBoard(_ sender: Any) {
        for button in allButtons {
            button.setImage(UIImage(named: "mark-none"), for: .normal)
        }
        gameBoard = [Button](repeating: Button.empty, count: 9)
        currPlayer = 1
        gameStatus = true
        moves = 0
        status.textColor = UIColor.black
        status.text = "Player 1's turn"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

