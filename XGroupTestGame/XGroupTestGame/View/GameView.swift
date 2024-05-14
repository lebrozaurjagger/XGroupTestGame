//
//  GameView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct GameView: View {
    @Binding var BOARD_DIMENSION: Int
    @State var start = true
    @State var to : CGFloat = 0
    @State var count = 0
    @State var timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    @State public var timerDisplay = "00:00"
    @State private var startTime = Date()
    @StateObject private var model = GameModel()
    
    @State var statusOpacity: Double = 1.0
    
    @State var backGround = ""
    @State var styleOfImage = ""
    @State var eachTile = ""
    @State var gameCharacter = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Image(backGround)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 236, height: 236)
                            .background(
                                Image(gameCharacter)
                                    .resizable()
                                    .scaledToFit()
                            )
                            .padding(.bottom, -40)
                        
                        HStack {
                            Image("Timer")
                            
                            Text(timerDisplay)
                                .fontWeight(.bold)
                                .onReceive(timer) { _ in
                                    if start {
                                        let duration = Date().timeIntervalSince(startTime)
                                        let formatter = DateComponentsFormatter()
                                        formatter.allowedUnits = [.minute, .second]
                                        formatter.unitsStyle = .positional
                                        formatter.zeroFormattingBehavior = .pad
                                        timerDisplay = formatter.string(from: duration) ?? ""
                                    }
                                }
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(.black.opacity(0.7))
                                .frame(width: 121, height: 44)
                        )
                        .padding(.bottom, 200)
                    }
                    
                    ZStack {
                        Rectangle()
                            .frame(width: 337, height: 337)
                            .foregroundColor(.black.opacity(0.7))
                            .background(
                                Image("Frame")
                                    .resizable()
                                    .frame(width: 353, height: 353)
                            )
                        
                        ZStack {
                            VStack {
                                if model.hasWon {
                                    Status(text: "GREAT!")
                                        .opacity(1.0)
                                }
                                
//                                Board Of Tiles View
                                Board(board: model.board, eachTile: eachTile)
                                    .frame(maxWidth: .infinity)
                                    .aspectRatio(1, contentMode: .fit)
                                    .padding()
                                    .gesture(DragGesture(minimumDistance: 20, coordinateSpace: .global).onEnded { value in
                                        let horizontalAmount = value.translation.width as CGFloat
                                        let verticalAmount = value.translation.height as CGFloat
                                        
                                        let direction: Direction = {
                                            if abs(horizontalAmount) > abs(verticalAmount) {
                                                return horizontalAmount < 0 ? .left : .right
                                            } else {
                                                return verticalAmount < 0 ? .up : .down
                                            }
                                        }()
                                        
                                        if start == true {
                                            withAnimation(.linear(duration: 0.2)) {
                                                model.slide(direction)
                                            }
                                        }
                                    })
                            }
                            .padding(10)
                            
                            ZStack {
                                if start == false {
                                    Status(text: "PAUSED")
                                        .opacity(1.0)
                                }
                                
                                if count >= 300 {
                                    Status(text: "GAME OVER")
                                        .opacity(1.0)
                                }
                            }
                        }
                    }
                    .padding(.bottom, 30)
                    
                    HStack {
                        NavigationLink(destination: LevelsView().navigationBarBackButtonHidden(true)) {
                            Image("Home")
                                .background(
                                    RoundedRectangle(cornerRadius: 30)
                                        .frame(width: 60, height: 60)
                                        .foregroundColor(.buttonYellow)
                                )
                        }
                        
                        Rectangle()
                            .stroke(Color.strokeColorLevels, lineWidth: 1)
                            .frame(width: 100, height: 100)
                            .background(
                                Image(styleOfImage)
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            )
                            .padding(.horizontal, 64)
                        
                        Button(action: {
                            self.start.toggle()
                        }) {
                            
                            HStack(spacing: 15){
                                Image(self.start ? "Pause" : "Play")
                                    .foregroundColor(.white)
                            }
                            .padding(.vertical)
                            .background(
                                RoundedRectangle(cornerRadius: 30)
                                    .frame(width: 60, height: 60)
                                    .foregroundColor(.buttonCyan)
                            )
                        }
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.black.opacity(0.7))
                            .frame(width: 352, height: 120)
                    )
                }
            }
        }
    }
}

#Preview {
    LevelsView()
}
