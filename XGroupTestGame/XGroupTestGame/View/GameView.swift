//
//  GameView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("CastleBack")
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
                                Image("Girl")
                                    .resizable()
                                    .scaledToFit()
                            )
                        
                        HStack {
                            Image("Timer")
                            Text("00:00")
                                .font(.system(size: 24))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 22)
                                .foregroundColor(.black.opacity(0.7))
                                .frame(width: 121, height: 44)
                        )
                        .padding(.bottom, 200)
                    }
                    
                    Grid()
                        .padding(.bottom, 30)
                    
                    HStack {
                        NavigationLink(destination: LevelsView()) {
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
                                Image("Ship")
                                    .resizable()
                                    .frame(width: 100, height: 100)
                            )
                            .padding(.horizontal, 64)
                        
                        Button(action: {
                            
                        }, label: {
                            Image("Pause")
                        })
                        .background(
                            RoundedRectangle(cornerRadius: 30)
                                .frame(width: 60, height: 60)
                                .foregroundColor(.buttonCyan)
                        )
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
    GameView()
}
