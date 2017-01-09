//
//  Game.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 09/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import Foundation

class Game {
    var result: Result?
    var state: [[TileState]]
    var currentPlayer: Player
    
    init() {
        currentPlayer = arc4random() % 2 == 0 ? .x : .o
        
        state = [
            [.empty, .empty, .empty],
            [.empty, .empty, .empty],
            [.empty, .empty, .empty],
        ]
    }
    
    func nextMove(row: Int, col: Int) {
        state[row][col] = .occupied(currentPlayer)
        currentPlayer = currentPlayer == .x ? .o : .x
    }
}
