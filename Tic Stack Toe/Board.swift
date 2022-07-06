//
//  Board.swift
//  Tic Stack Toe
//
//  Created by Katrina Liu on 7/6/22.
//

import Foundation
import SwiftUI

class Board : ObservableObject {
    @Published private var board = [Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell(), Cell()]
    @Published private var rectLoc = [CGPoint](repeating: CGPoint(x: 0, y: 0), count: 9)
    
    func getRectLoc(index:Int)->CGPoint {
        return rectLoc[index]
    }
    
    func levelUp(newLevel:Int, index:Int)->Bool {
        if (newLevel > board[index].getLevel()) {
            board[index].setLevel(newLevel: newLevel)
            return true
        } else {
            return false
        }
    }
    
    func storeRectLoc(loc:CGPoint, index:Int) {
        rectLoc[index] = loc
    }
    
    func locToIndex(loc:CGPoint)->Int {
        for (index, point) in rectLoc.enumerated() {
            if (loc == point) {
                return index
            }
        }
        return -1
    }
    
    func checkWin()->Bool {
        let r1 = board[0].getPlayer() == board[1].getPlayer() && board[1].getPlayer() == board[2].getPlayer() && board[0].getPlayer() != 2
        let r2 = board[3].getPlayer() == board[4].getPlayer() && board[4].getPlayer() == board[5].getPlayer() && board[3].getPlayer() != 2
        let r3 = board[6].getPlayer() == board[7].getPlayer() && board[7].getPlayer() == board[8].getPlayer() && board[6].getPlayer() != 2
        let c1 = board[0].getPlayer() == board[3].getPlayer() && board[3].getPlayer() == board[8].getPlayer() && board[0].getPlayer() != 2
        let c2 = board[1].getPlayer() == board[4].getPlayer() && board[4].getPlayer() == board[7].getPlayer() && board[1].getPlayer() != 2
        let c3 = board[2].getPlayer() == board[5].getPlayer() && board[5].getPlayer() == board[8].getPlayer() && board[2].getPlayer() != 2
        let d1 = board[0].getPlayer() == board[4].getPlayer() && board[4].getPlayer() == board[8].getPlayer() && board[0].getPlayer() != 2
        let d2 = board[2].getPlayer() == board[4].getPlayer() && board[4].getPlayer() == board[6].getPlayer() && board[2].getPlayer() != 2
        return r1 || r2 || r3 || c1 || c2 || c3 || d1 || d2
    }
}
