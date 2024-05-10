//
//  ScoreView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct ScoreView: View {
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
                    
                    ScoreList()
                        .padding(.bottom, 40)
                    
                    ScoreList()
                        .padding(.bottom, 40)
                    
                    ScoreList()
                        .padding(.bottom, 40)
                    
                    Spacer()
                    
                    NavigationLink(destination: ContentView()) {
                        Text("Back")
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
    ScoreView()
}
