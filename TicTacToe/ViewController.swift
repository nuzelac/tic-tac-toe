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
            // @TODO deskriptivan toString u Result
            if case let .win(player) = result {
                state.text = "Igrač \(player) je pobijedio!"
            } else if case .tie = result {
                state.text = "Izjednačen je!"
            }
        } else {
            state.text = "Na redu je igrač \(game.currentPlayer)"
        }
    }
    
    @IBOutlet var boardButtons: [UIButton]!

    @IBAction func titleButtonTap(_ sender: UIButton) {
        let tag = sender.tag
        let row = tag / 10 - 1
        let col = tag % 10 - 1
        
        game.nextMove(row: row, col: col)
        if case let .occupied(player) = game.state[row][col] {
            sender.setTitle("\(player)", for: .normal)
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

