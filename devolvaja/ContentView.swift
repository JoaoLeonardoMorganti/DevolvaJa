//
//  ContentView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 21/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    var body: some View {
        RouterView {
            SplashScreenView()
        }
    }
}

#Preview {
    ContentView()
}
