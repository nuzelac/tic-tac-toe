//
//  ViewController.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 07/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game = Game()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        refreshLabel()
    }

    private func refreshLabel() {
        if let result = game.result {
            state.text = "\(result)"
        } else {
            state.text = "Na redu je igrač \(game.currentPlayer.rawValue.uppercased())"
        }
    }
    
    @IBOutlet var boardButtons: [UIButton]!

    @IBAction func titleButtonTap(_ sender: UIButton) {
        let tag = sender.tag
        let row = tag / 10 - 1
        let col = tag % 10 - 1
        
        game.nextMove(row: row, col: col)
        if case let .occupied(player) = game.state[row][col] {
            sender.setTitle("\(player.rawValue.uppercased())", for: .normal)
        }
        refreshLabel()
    }
    
    @IBOutlet weak var state: UILabel!
    
    
    @IBAction func reset(_ sender: UIButton) {
        game = Game()
        
        for button in boardButtons {
            button.setTitle("", for: .normal)
        }
        
        refreshLabel()
    }
}

