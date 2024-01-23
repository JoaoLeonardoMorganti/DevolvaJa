//
//  IdentificationItem.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 23/01/24.
//

import SwiftUI

struct IdentificationItem: View {
    let title: LocalizedStringKey
    let value: String
    
    var body: some View {
        HStack() {
            Text(title)
                .font(.system(size: 17, weight: .bold))
                .foregroundColor(Color(hex: K.Colors.darkGreen))
            Text(value)
                .font(.system(size: 17, weight: .regular))
                .foregroundColor(Color(hex: K.Colors.darkGreen))
        }
    }
}
