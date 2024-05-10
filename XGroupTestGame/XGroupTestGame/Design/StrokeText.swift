//
//  StrokeText.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct StrokeText: View {
    var body: some View {
        Stroke(text: "Sample Text", width: 1.5, color: .red)
            .foregroundColor(.black)
            .font(.system(size: 40, weight: .bold))

    }
}

struct Stroke: View {
    let text: String
    let width: CGFloat
    let color: Color

    var body: some View {
        ZStack{
            ZStack{
                Text(text).offset(x:  width, y:  width)
                Text(text).offset(x: -width, y: -width)
                Text(text).offset(x: -width, y:  width)
                Text(text).offset(x:  width, y: -width)
            }
            .foregroundColor(color)
            Text(text)
        }
    }
}

#Preview {
    StrokeText()
}
