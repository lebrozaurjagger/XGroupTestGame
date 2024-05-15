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
                    .frame(width: 1)
                
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
                            .padding(.top, 40)
                        
                        HStack(alignment: .top) {
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
                        ZStack {
                            VStack {
                                if model.hasWon {
                                    Status(text: "GREAT!")
                                        .opacity(1.0)
                                }
                                
//                                Board Of Tiles View
                                ZStack {
                                    Board(board: model.board, eachTile: eachTile)
                                        .aspectRatio(1, contentMode: .fit)
                                        .padding(12)
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
                                        .background(
                                            Image("Frame")
                                                .resizable()
                                                .scaledToFit()
                                                .background(
                                                    Rectangle()
                                                        .foregroundColor(.black.opacity(0.7))
                                                )
                                        )
                                        .padding(.horizontal, 40)
                                }
                            }
                            
                            ZStack {
                                if start == false {
                                    Status(text: "PAUSED", statusOpacity: 1.0)
                                        .ignoresSafeArea()
                                }
                                
                                if count >= 300 {
                                    Status(text: "GAME OVER", statusOpacity: 1.0)
                                        .ignoresSafeArea() 
                                }
                            }
                        }
                    }
                    
                    Spacer()
                    
                    ZStack {
                        if UIDevice.current.hasNotch {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black.opacity(0.7))
                                .frame(height: 120)
                        } else {
                            Rectangle()
                                .foregroundColor(.black.opacity(0.7))
                                .frame(width: .infinity, height: 120)
                                .padding(.horizontal, -40)
                        }
                        
                        HStack {
                            Spacer()
                            
                            NavigationLink(destination: LevelsView().navigationBarBackButtonHidden(true)) {
                                Image("Home")
                                    .background(
                                        RoundedRectangle(cornerRadius: 30)
                                            .frame(width: 60, height: 60)
                                            .foregroundColor(.buttonYellow)
                                    )
                            }
                            
                            Spacer()
                            
                            Rectangle()
                                .stroke(Color.strokeColorLevels, lineWidth: 1)
                                .frame(width: 100, height: 100)
                                .background(
                                    Image(styleOfImage)
                                        .resizable()
                                        .frame(width: 100, height: 100)
                                )
                            
                            Spacer()
                            
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
                            
                            Spacer()
                        }
                    }
                    .padding(.horizontal, 40)
                }
            }
        }
    }
}

#Preview {
    GameView(BOARD_DIMENSION: .constant(3), backGround: "SeaBack", styleOfImage: "Ship", eachTile: "ship", gameCharacter: "Octopus")
}
