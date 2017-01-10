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
        let players = [Player.x, Player.o]

        // check rows
        for i in 0..<3 {
            for player in players {
                if case .occupied(player) = state[i][0],
                    case .occupied(player) = state[i][1],
                    case .occupied(player) = state[i][2]{
                    
                    return Result.win(player)
                }
            }
        }
        
        // check cols
        for j in 0..<3 {
            for player in players {
                if case .occupied(player) = state[0][j],
                    case .occupied(player) = state[1][j],
                    case .occupied(player) = state[2][j]{
                    
                    return Result.win(player)
                }
            }
        }
        
        // check diagonals
        for player in players {
            if case .occupied(player) = state[0][0],
                case .occupied(player) = state[1][1],
                case .occupied(player) = state[2][2]{
                
                return Result.win(player)
            }
        }
        for player in players {
            if case .occupied(player) = state[0][2],
                case .occupied(player) = state[1][1],
                case .occupied(player) = state[2][0]{
                
                return Result.win(player)
            }
        }

        return nil
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
