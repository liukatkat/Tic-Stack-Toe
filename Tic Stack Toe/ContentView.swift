//
//  ContentView.swift
//  Tic Stack Toe
//
//  Created by Katrina Liu on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var newGame : Game = Game()
    
    func initialize() {
        newGame.reverseCross()
    }
    
    var body: some View {
        VStack {
            HStack {
                ForEach(newGame.players[0].currentPieces) { piece in
                    Circle()
                        .frame(width: (UIScreen.main.bounds.width - 80)/5, height: (UIScreen.main.bounds.width - 80)/25*CGFloat(piece.level), alignment: .center)
                }
            }
            .padding()
            VStack{
                ForEach(newGame.board) { row in
                    HStack {
                        ForEach(row.cells) { cell in
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.gray)
                                .frame(width: (UIScreen.main.bounds.width - 80)/3, height: (UIScreen.main.bounds.width - 80)/3, alignment: .center)
                        }
                    }
                }
            }
            HStack {
                ForEach(newGame.players[1].currentPieces) { piece in
                    Circle()
                        .frame(width: (UIScreen.main.bounds.width - 80)/5, height: (UIScreen.main.bounds.width - 80)/25*CGFloat(piece.level), alignment: .center)
                }
            }
        }
        .onAppear(perform: initialize)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
