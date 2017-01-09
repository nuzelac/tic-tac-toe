//
//  TileState.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 09/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import Foundation

enum TileState: Equatable {
    case occupied(Player)
    case empty

    public static func ==(lhs: TileState, rhs: TileState) -> Bool {
        switch (lhs, rhs) {
        case (let .occupied(player1), let .occupied(player2)):
            return player1 == player2
            
        case (.empty, .empty):
            return true
            
        default:
            return false
        }
    }
}
