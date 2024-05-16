//
//  ScoreView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct ScoreView: View {
    @StateObject private var model = GameModel()
    @State var paddingValue = if UIDevice.current.hasNotch { 40 } else { 12 }
    
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
                    
                    Score(level: "1", image1: "Ship", image2: "Treasure", image3: "Kraken", padding: CGFloat(paddingValue))
                    Score(level: "2", image1: "Baloons", image2: "House", image3: "Castle", padding: CGFloat(paddingValue))
                    Score(level: "3", image1: "Cowboy", image2: "Arizona", image3: "Saloon", padding: CGFloat(paddingValue))
                    
                    Spacer()
                    
                    NavigationLink(destination: LevelsView().navigationBarBackButtonHidden(true)) {
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
