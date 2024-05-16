//
//  ContentView.swift
//  XGroupTestGame
//
//  Created by Phillip on 10.05.2024.
//

import SwiftUI

struct ContentView: View {
    private var title = "YUKON-GOLD"
    private var subtitle = "CLASSIC WORLD"
    
    var body: some View {
        
        NavigationView {
            ZStack {
                RadialGradient(gradient: Gradient(colors: [.backgroundCenter, .backgroundFrame]), center: .center, startRadius: 10, endRadius: 300)
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    
                    ZStack {
                        ZStack {
                            ZStack {
                                Ellipse()
                                    .overlay(LinearGradient(gradient: Gradient(colors: [.goldenLogoTop, .goldenLogoBottom]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .mask(Ellipse())
                                    .frame(width: 282, height: 143)
                                
                                Ellipse()
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [.darkBlueLogoTop, .darkBlueLogoBottom]), startPoint: .bottom, endPoint: .top)
                                    )
                                    .mask(Ellipse())
                                    .frame(width: 274, height: 133)
                                    .padding()
                            }
                            
                            VStack {
                                //                    TODO: Stroke text rgba(0, 0, 0, 1)
                                Text(title)
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [.greenTextTop, .greenTextBottom]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .mask(Text(title))
                                    .font(.custom("Aguante", fixedSize: 40))
                                    .padding(.bottom, -35)
                                    .shadow(color: .black, radius: 1)
                                
                                //                    TODO: Stroke text rgba(69, 47, 47, 1)
                                Text(subtitle)
                                    .overlay(
                                        LinearGradient(gradient: Gradient(colors: [.goldenTextTop, .goldenTextCenter, .goldenTextTop, .goldenTextBottom]), startPoint: .top, endPoint: .bottom)
                                    )
                                    .mask(Text(subtitle))
                                    .font(.custom("Acme", fixedSize: 32))
                                    .shadow(color: .black, radius: 1)
                            }
                        }
                        
                        ZStack {
                            Image("Cherry")
                                .resizable()
                                .frame(width: 111, height: 111)
                                .padding(.trailing, 90)
                            Image("Lemon")
                                .resizable()
                                .frame(width: 111, height: 111)
                                .padding(.leading, 90)
                        }
                        .padding(.top, 180)
                    }
                    .padding(.bottom, 160)
                    
                    Spacer()
                    
                    NavigationLink(destination: LevelsView().navigationBarBackButtonHidden(true)) {
                        Text("Start")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .background(
                                RoundedRectangle(cornerSize: CGSize(width: 120, height: 60))
                                    .foregroundColor(.buttonYellow)
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
    ContentView()
}
