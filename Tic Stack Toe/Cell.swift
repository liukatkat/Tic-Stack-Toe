//
//  Cell.swift
//  Tic Stack Toe
//
//  Created by Katrina Liu on 7/6/22.
//

import Foundation

class Cell {
    private var level : Int = 0
    private var player : Int = 2 // 0: circle, 1: cross, 2: unassigned
    
    func getLevel()->Int {
        return self.level
    }
    
    func getPlayer()->Int {
        return self.player
    }
    
    func setLevel(newLevel:Int) {
        self.level = newLevel
    }
    
    func setPlayer(newPlayer: Int) {
        self.player = newPlayer
    }
}
