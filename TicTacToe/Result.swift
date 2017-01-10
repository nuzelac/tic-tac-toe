//
//  Result.swift
//  TicTacToe
//
//  Created by Nino Uzelac on 09/01/2017.
//  Copyright © 2017 Nino Uzelac. All rights reserved.
//

import Foundation

enum Result: CustomStringConvertible {
    case win(Player)
    case tie
    
    var description: String {
        switch self {
        case let .win(player):
            return "Igrač \(player.rawValue) je pobijedio!"
        case .tie:
            return "Izjednačen je!"
        }
    }
}
