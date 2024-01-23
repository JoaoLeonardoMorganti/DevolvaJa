//
//  SplashScreenView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct SplashScreenView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack() {
            Button("Identification") {
                router.navigateTo(.identificationView)
            }
        }
        .navigationTitle("Splash Screen")
    }
}
