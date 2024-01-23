//
//  SplashScreenView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var scale = 0.5
    @State private var opacity = 0.0
    @Binding var showSplash: Bool
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hex: K.Colors.darkGreen))
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20){
                Image(K.Images.splashIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .scaleEffect(scale)
                    .opacity(opacity)
                    .onAppear {
                        withAnimation(.timingCurve(0.5, 1.8, 0.2, 1, duration: 1.0)) {
                            scale = (scale == 1.0) ? 0.5 : 1.0
                            opacity = 1
                        }
                    }
            }
            
        }.onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                withAnimation {
                    showSplash = false
                }
            }
        }
    }
}
