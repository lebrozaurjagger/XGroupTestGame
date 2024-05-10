//
//  LevelsView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct LevelsView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("LevelsBack")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                    .offset(x: 160)
                    .blur(radius: 3.0, opaque: true)
                
                VStack {
                    Spacer()
                    
                    VStack {
                        ZStack {
                            Rectangle()
                                .stroke(Color.strokeColorLevels, lineWidth: 1)
                                .frame(width: 353, height: 92)
                            
                            HStack {
                                Text("Level 1")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
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
                        }
                        
                        
                        ZStack{
                        Rectangle()
                            .stroke(Color.strokeColorLevels, lineWidth: 1)
                            .frame(width: 353, height: 92)
                            .padding()
                            HStack {
                                Text("Level 1")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
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
                        }
                        
                        ZStack {
                            Rectangle()
                                .stroke(Color.strokeColorLevels, lineWidth: 1)
                                .frame(width: 353, height: 92)
                            HStack {
                                Text("Level 1")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .padding()
                                
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
                                Rectangle()
                                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                                    .frame(width: 72, height: 72)
                                    .foregroundColor(.clear)
                                    .background(
                                        Image("Ship")
                                            .resizable()
                                            .frame(width: 72, height: 72)
                                    )
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
                        }
                    }
                    .padding(.bottom, 80)
                    
                    Spacer()
                    
                    NavigationLink(destination: ScoreView()) {
                        Text("High Score")
                            .tint(.white)
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
