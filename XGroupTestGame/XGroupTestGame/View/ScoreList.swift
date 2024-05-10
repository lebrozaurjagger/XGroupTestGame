//
//  ScoreList.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct ScoreList: View {
    var body: some View {
        VStack {
            HStack {
                Text("Level 1")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.leading)
                    .padding(.vertical, -2)
                
                Spacer()
            }
            .padding(.horizontal, 12)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image("Ship")
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text("01:22")
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 30)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image("Ship")
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text("--:--")
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 30)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image("Ship")
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text("--:--")
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 30)
        }
        .background(
            Rectangle()
                .stroke(Color.strokeColorLevels, lineWidth: 1)
                .frame(width: 353, height: 176)
        )
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ScoreList()
}
