//
//  ContentView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 21/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showSplash = true
    var body: some View {
        RouterView {
            if showSplash {
                SplashScreenView(showSplash: $showSplash)
            } else {
                IdentificationView()
            }
        }
    }
}

#Preview {
    ContentView()
}
