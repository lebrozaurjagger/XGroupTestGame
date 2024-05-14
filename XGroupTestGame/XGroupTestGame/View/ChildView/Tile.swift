//
//  Tile.swift
//  XGroupTestGame
//
//  Created by Phillip on 11.05.2024.
//

import SwiftUI

/*
An instance of this View is a tile that is slid around the gameboard as a puzzle is solved.
It should be given a square frame by an ancestor View.
*/
struct Tile: View {
    let number: Int
    @State public var styleOfTile: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color(.clear))
                .background(
                    ZStack {
                        Image("\(styleOfTile)\(number)")
                            .resizable()
                            .scaledToFit()
                    }
                )
        }
    }
}

struct TileView_Previews: PreviewProvider {
    static var previews: some View {
        Tile(number: 1, styleOfTile: "ship")
    }
}
