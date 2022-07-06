//
//  ContentView.swift
//  Tic Stack Toe
//
//  Created by Katrina Liu on 7/4/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var board = Board()
    @State var currentLoc : CGPoint = CGPoint(x: 0, y: 0)
    @State var cnt : Int = 0
    @State var cirLoc : CGPoint = CGPoint(x: 29.5, y: 256)
    
    var body: some View {
        ZStack{
            VStack {
                ForEach((0...2), id: \.self){_ in
                    HStack {
                        ForEach((0...2), id: \.self){_ in
                            RoundedRectangle(cornerRadius: 10)
                            .frame(minWidth: 10, idealWidth: 80, maxWidth: 100, minHeight: 10, idealHeight: 80, maxHeight: 100, alignment: .center)
                            .aspectRatio(1, contentMode: .fit)
                            .overlay(
                                GeometryReader(content: { geometry in
                                    Color.clear
                                        .onAppear(perform: {
                                            self.currentLoc = geometry.frame(in: .named("stack")).origin
                                        })
                                })
                            )
                            .onAppear(perform: {()->() in
                                board.storeRectLoc(loc: currentLoc, index: cnt)
                                cnt += 1
                                print(currentLoc)
                            })
                        }
                    }
                }
            }
            
            Rectangle()
                .position(board.getRectLoc(index: 0))
                .frame(minWidth: 10, idealWidth: 80, maxWidth: 100, minHeight: 10, idealHeight: 80, maxHeight: 100, alignment: .center)
        }
        .coordinateSpace(name: "stack")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
