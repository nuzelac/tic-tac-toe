//
//  Game.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 09/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import Foundation

class Game {
    var result: Result? {
        return nil // @TODO
    }
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
        if result == nil {
            let cell = state[row][col]
            
            if cell == .empty {
                state[row][col] = .occupied(currentPlayer)
                currentPlayer = currentPlayer == .x ? .o : .x
            }
        }
    }
}
