//
//  Score.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct Score: View {
    @State var level = ""
    @State var image1 = ""
    @State var image2 = ""
    @State var image3 = ""
    @State var time = "--:--"
    
    var body: some View {
        VStack {
            HStack {
                Text("Level \(level)")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.leading)
                    .padding(.vertical, -2)
                
                Spacer()
            }
            .padding(.horizontal, -8)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image(image1)
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text(time)
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 10)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image(image2)
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text(time)
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 10)
            
            HStack {
                Rectangle()
                    .stroke(Color.strokeColorLevels, lineWidth: 1)
                    .frame(width: 36, height: 36)
                    .foregroundColor(.clear)
                    .background(
                        Image(image3)
                            .resizable()
                            .frame(width: 36, height: 36)
                    )
                
                Spacer()
                
                Text(time)
                    .foregroundColor(.white)
                    .padding(.trailing)
            }
            .padding(.horizontal, 10)
        }
        .background(
            Rectangle()
                .stroke(Color.strokeColorLevels, lineWidth: 1)
                .frame(height: 176)
        )
        .preferredColorScheme(.dark)
    }
}

#Preview {
    Score()
}
