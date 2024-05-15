//
//  Status.swift
//  XGroupTestGame
//
//  Created by Phillip on 13.05.2024.
//

import SwiftUI

struct Status: View {
    @State var text = "PAUSE"
    @State var statusOpacity: Double = 1.0
    
    var body: some View {
        Text(text)
            .overlay(
                LinearGradient(gradient: Gradient(colors: [.pauseColorTop, .pauseColorBottom]), startPoint: .top, endPoint: .bottom)
            )
            .mask(Text(text))
            .font(.custom("Aguante", fixedSize: 40))
            .shadow(color: .black, radius: 1)
            .padding(.horizontal, 30)
            .background(
                RoundedRectangle(cornerRadius: 28)
                    .foregroundColor(.black.opacity(0.7))
                    .frame(maxHeight: 56)
            )
            .opacity(statusOpacity)
    }
}
#Preview {
    Status()
}
