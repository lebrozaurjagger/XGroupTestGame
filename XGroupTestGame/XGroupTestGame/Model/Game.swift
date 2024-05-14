//
//  Game.swift
//  XGroupTestGame
//
//  Created by Phillip on 11.05.2024.
//

import Foundation
import SwiftUI

enum Direction {
    case up, down, left, right
    
    var opposite: Direction {
        switch self {
        case .up:
            return .down
        case .down:
            return .up
        case .left:
            return .right
        case .right:
            return .left
        }
    }
}
// Размер борды NxN

class GameModel: ObservableObject {
    var view = GameView(BOARD_DIMENSION: .init(get: <#T##() -> Int#>, set: <#T##(Int) -> Void#>))
    @Published var board: [[Int?]]
    @Published var hasWon = false
    
    private var emptyPosition: (Int, Int)
    
    init () {
        var positions: [(Int, Int)] = []
        for column in 0..<view.BOARD_DIMENSION {
            for row in 0..<view.BOARD_DIMENSION {
                positions.append((column, row))
            }
        }
        
        let shuffledTileNumbers = Array(1...view.BOARD_DIMENSION * view.BOARD_DIMENSION - 1).shuffled()
        
        self.board = Array(
            repeating: Array(repeating: nil, count: view.BOARD_DIMENSION),
            count: view.BOARD_DIMENSION
        )
        
        self.emptyPosition = (view.BOARD_DIMENSION - 1, view.BOARD_DIMENSION - 1)
        
        zip(shuffledTileNumbers, positions).forEach { number, position in
            self.board[position.0][position.1] = number
        }
    }
    
    /// If possible, moves a tile on the board into the empty space by sliding the tile in the given direction.
    func slide(_ direction: Direction) {
        guard let tilePosition = getNeighbor(of: emptyPosition, inDirection: direction.opposite) else { return }
        guard let tileNumber = self.board[tilePosition.0][tilePosition.1] else { return }
        
        var newBoard = self.board
        
        newBoard[emptyPosition.0][emptyPosition.1] = tileNumber
        newBoard[tilePosition.0][tilePosition.1] = nil
        self.emptyPosition = tilePosition
        
        self.board = newBoard
        
        self.hasWon = checkForWin()
    }
    
    /// Given a position on the board, returns the immediate neighbor, if it exists, in the given direction.
    private func getNeighbor(of position: (Int, Int), inDirection direction: Direction) -> (Int, Int)? {
        var neighborColumn = position.0
        var neighborRow = position.1
        
        switch direction {
        case .up:
            neighborRow -= 1
        case .down:
            neighborRow += 1
        case .left:
            neighborColumn -= 1
        case .right:
            neighborColumn += 1
        }
        
        guard neighborColumn >= 0, neighborColumn < view.BOARD_DIMENSION,
              neighborRow >= 0, neighborRow < view.BOARD_DIMENSION else {
            return nil
        }
        
        return (neighborColumn, neighborRow)
    }
    
    /// Returns true if the numbers on the gameboard are in order and the empty space is in the bottom-right corner.
    private func checkForWin() -> Bool {
        let bottomRightPosition = (view.BOARD_DIMENSION - 1, view.BOARD_DIMENSION - 1)
        guard self.board[bottomRightPosition.0][bottomRightPosition.1] == nil else { return false }
        
        var numbers: [Int] = []
        
        for row in 0..<view.BOARD_DIMENSION {
            for column in 0..<view.BOARD_DIMENSION {
                guard let number = self.board[column][row] else { continue }
                numbers.append(number)
            }
        }
        
        let sortedNumbers = numbers.sorted()
        return numbers.elementsEqual(sortedNumbers)
    }
}
