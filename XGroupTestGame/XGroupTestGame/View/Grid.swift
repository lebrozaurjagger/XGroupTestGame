//
//  Grid.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct Grid: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 337, height: 337)
                .foregroundColor(.black.opacity(0.7))
                .background(
                    Image("Frame")
                        .resizable()
                        .frame(width: 353, height: 353)
            )
        }
    }
}

#Preview {
    Grid()
}
