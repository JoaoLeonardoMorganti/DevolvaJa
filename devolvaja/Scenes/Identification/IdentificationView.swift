//
//  IdentificationView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct IdentificationView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack() {
            Button("Accident") {
                router.navigateTo(.accidentView)
            }
        }
        .navigationTitle("Identification")
    }
}
