//
//  GameModel.swift
//  Tic Stack Toe
//
//  Created by Katrina Liu on 7/5/22.
//

import Foundation
import SwiftUI

class Game : ObservableObject {
    @Published var board = [
        Row(id: 1,cells:
                [
                    Cell(id: 1,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 2,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 3,currentPiece: Piece(level: 0),occupiedBy: Player.None)
                ]),
        Row(id: 2,cells:
                [
                    Cell(id: 4,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 5,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 6,currentPiece: Piece(level: 0),occupiedBy: Player.None)
                ]),
        Row(id: 3,cells:
                [
                    Cell(id: 7,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 8,currentPiece: Piece(level: 0),occupiedBy: Player.None),
                    Cell(id: 9,currentPiece: Piece(level: 0),occupiedBy: Player.None)
                ])
    ]
    @Published var players = [CurrentPlayer(playerType: Player.Circle), CurrentPlayer(playerType: Player.Cross)]
}

struct Cell : Identifiable {
    var id : Int
    var currentPiece : Piece
    var occupiedBy : Player
}

struct Row : Identifiable {
    var id : Int
    var cells = [Cell]()
}

enum Player {
    case Circle
    case Cross
    case None
}

struct CurrentPlayer {
    var playerType : Player
    var currentPieces = [Piece(level: 1), Piece(level: 2), Piece(level: 3), Piece(level: 4), Piece(level: 5)]
}

struct Piece : Identifiable {
    var id = UUID()
    var level : Int
}

extension Game {
    func reverseCross() {
        players[1].currentPieces.reverse()
    }
}
