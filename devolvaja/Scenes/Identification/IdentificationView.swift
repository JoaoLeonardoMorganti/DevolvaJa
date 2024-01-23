//
//  IdentificationView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct IdentificationView: View {
    @EnvironmentObject var router: Router
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Vejo que sua jornada chegou ao fim :(")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(Color(hex: K.Colors.darkGreen))
            Spacer()
            Text("Para a devolução do carro precisamos confirmar algumas informações!")
                .foregroundColor(Color(hex: K.Colors.darkGreen))
            
            ZStack {
                Color(hex: K.Colors.lightGreen)
                
                VStack(alignment: .center) {
                    Text("Insira a placa do carro")
                        .font(.system(size: 20, weight: .semibold))
                        .textFieldStyle(.plain)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .top, .trailing])
                    TextField("004278-1", text: $searchText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 100)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            }
            
            .cornerRadius(20)
            .padding(.top)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.top, .bottom], 20)
        .padding([.leading, .trailing], 15)
        .navigationTitle("Identificação")
    }
}

#Preview {
    ContentView()
}
