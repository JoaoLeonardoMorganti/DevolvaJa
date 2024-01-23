//
//  AccidentView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct AccidentView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack() {
            Button("Raiz") {
                router.popToRoot()
            }
        }
        .navigationTitle("Accident")
    }
}
