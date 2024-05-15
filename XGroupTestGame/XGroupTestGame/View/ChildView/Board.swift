//
//  Board.swift
//  XGroupTestGame
//
//  Created by Phillip on 11.05.2024.
//

import SwiftUI

/// The number of points between grid spaces on the gameboard.
private let BOARD_SPACING: CGFloat = 2

/// Given a tile with a logical position, returns an offset that allows the tile to be positioned absolutely on the gameboard.
private func getOffsetFor(column: Int, row: Int, size: CGFloat) -> CGSize {
    return CGSize(
        width: CGFloat(column) * (size + BOARD_SPACING),
        height: CGFloat(row) * (size + BOARD_SPACING)
    )
}

/**
 The gameboard grid. Contains the numbered tiles that the player moves around.
 */
struct Board: View {
    var view = GameView(BOARD_DIMENSION: .constant(3))
    let board: [[Int?]]
    @State public var eachTile: String
    
    var body: some View {
        let tileNumbersAndPositions: [(Int, Int, Int)] = {
            var result: [(Int, Int, Int)] = []
            
            board.enumerated().forEach { columnNum, column in
                column.enumerated().forEach { rowNum, number in
                    if let number = number {
                        result.append((number, columnNum, rowNum))
                    }
                }
            }
            
            return result
        }()
        
        GeometryReader { geo in
            // These calculations allow the gameboard to take up the full width of the screen, which works well for portrait orientation.
            let totalSpacing: CGFloat = BOARD_SPACING * CGFloat(view.BOARD_DIMENSION - 1)
            let availableWidth: CGFloat = geo.size.width - totalSpacing
            let tileSize: CGFloat = availableWidth / CGFloat(view.BOARD_DIMENSION)
            let columns: [GridItem] = Array(
                repeating: .init(.fixed(tileSize), spacing: BOARD_SPACING),
                count: view.BOARD_DIMENSION
            )
            
            // A ZStack is used so that the tiles appear above the grid.
            // .topLeading makes it easy to position the tiles absolutely, according to their logical (non-UI) position.
            ZStack(alignment: .topLeading) {
                LazyVGrid(columns: columns, spacing: BOARD_SPACING) {
                    ForEach(0..<view.BOARD_DIMENSION*view.BOARD_DIMENSION) { _ in
                        Rectangle()
                            .fill(Color(.clear))
                            .frame(width: tileSize, height: tileSize)
                    }
                }
                
                // Changing the logical position of a number means that the corresponding tile view moves to a different location on the screen.
                ForEach(tileNumbersAndPositions, id: \.0) { number, column, row in
                    Tile(number: number, styleOfTile: eachTile)
                        .frame(width: tileSize, height: tileSize)
                        .offset(getOffsetFor(column: column, row: row, size: tileSize))
                }
            }
        }
    }
}


//struct BoardView_Previews: PreviewProvider {
//    static var previews: some View {
//        var view = GameView(BOARD_DIMENSION: .constant(3))
//        
//        Board(board: {
//            var board: [[Int?]] = Array(
//                repeating: Array(repeating: nil, count: view.BOARD_DIMENSION),
//                count: view.BOARD_DIMENSION
//            )
//            
//            board[0][0] = 1
//            board[1][0] = 2
//            board[1][1] = 5
//            
//            return board
//        }(), eachTile: "ship")
//    }
//}


#Preview {
    GameView(BOARD_DIMENSION: .constant(3), backGround: "SeaBack", styleOfImage: "Ship", eachTile: "ship", gameCharacter: "Octopus")
}
