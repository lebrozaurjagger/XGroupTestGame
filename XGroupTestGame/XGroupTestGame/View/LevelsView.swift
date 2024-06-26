//
//  LevelsView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct LevelsView: View {
    @State public var Level = "1"
    @StateObject private var model = GameModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("LevelsBack")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x: 160)
                    .blur(radius: 3.0, opaque: true)
                    .frame(width: 1)
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        Rectangle()
                            .stroke(Color.strokeColorLevels, lineWidth: 1)
                            .frame(height: 92)
                            .padding()
                        
                        HStack {
                            Text("Level 1")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding()
                            
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "SeaBack", styleOfImage: "Ship", eachTile: "ship", gameCharacter: "Octopus").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "SeaBack", styleOfImage: "Treasure", eachTile: "treasure", gameCharacter: "Octopus").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Treasure")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                            .opacity(1.0)
                                        }
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "SeaBack", styleOfImage: "Kraken", eachTile: "kraken", gameCharacter: "Octopus").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Kraken")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            .padding(.trailing, 10)
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .stroke(Color.strokeColorLevels, lineWidth: 1)
                            .frame(height: 92)
                            .padding()
                        
                        HStack {
                            Text("Level 2")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding()
                            
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "CastleBack", styleOfImage: "Baloons", eachTile: "baloon", gameCharacter: "Girl").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Baloons")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "CastleBack", styleOfImage: "House", eachTile: "house", gameCharacter: "Girl").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("House")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "CastleBack", styleOfImage: "Castle", eachTile: "castle", gameCharacter: "Girl").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Castle")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            .padding(.trailing, 10)
                        }
                    }
                    
                    ZStack {
                        Rectangle()
                            .stroke(Color.strokeColorLevels, lineWidth: 1)
                            .frame(height: 92)
                            .padding()
                        
                        HStack {
                            Text("Level 3")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .padding()
                            
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "DesertBack", styleOfImage: "Cowboy", eachTile: "cowboy", gameCharacter: "CowboyChar").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Cowboy")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "DesertBack", styleOfImage: "Arizona", eachTile: "arizona", gameCharacter: "CowboyChar").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Arizona")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            NavigationLink(destination: GameView(BOARD_DIMENSION: .constant(3), backGround: "DesertBack", styleOfImage: "Saloon", eachTile: "saloon", gameCharacter: "CowboyChar").navigationBarBackButtonHidden(true)) {
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        ZStack {
                                            Image("Saloon")
                                                .resizable()
                                                .frame(width: 72, height: 72)
                                            
                                            ZStack {
                                                Rectangle()
                                                    .foregroundColor(.black)
                                                    .opacity(0.5)
                                                Image("Lock")
                                            }
                                        }
                                    )
                            }
                            .padding(.trailing, 10)
                        }
                    }
                    
                    Spacer()
                    
                    NavigationLink(destination: ScoreView().navigationBarBackButtonHidden(true)) {
                        Text("High Score")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .background(
                                RoundedRectangle(cornerSize: CGSize(width: 120, height: 60))
                                    .foregroundColor(.buttonCyan)
                                    .frame(width: 120, height: 60)
                            )
                    }
                    .padding(.bottom, 50)
                }
            }
        }
    }
}

#Preview {
    LevelsView()
}
