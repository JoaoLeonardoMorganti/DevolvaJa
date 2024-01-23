//
//  IdentificationView.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 22/01/24.
//

import SwiftUI

struct IdentificationView: View {
    @EnvironmentObject var router: Router
    @StateObject var viewModel = IdentificationViewModel(identificationService: IdentificationService())
    @State private var licensePlate: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("IDENTIFICATION_TITLE")
                .font(.system(size: 23, weight: .bold))
                .foregroundColor(Color(hex: K.Colors.darkGreen))
                .padding(.bottom, 3)
            Text("IDENTIFICATION_DESCRIPTION")
                .foregroundColor(Color(hex: K.Colors.darkGreen))
            
            ZStack {
                Color(hex: K.Colors.lightGreen)
                
                VStack(alignment: .center) {
                    Text("IDENTIFICATION_LICENSE_PLATE_TITLE")
                        .font(.system(size: 20, weight: .semibold))
                        .textFieldStyle(.plain)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing])
                    TextField("IDENTIFICATION_LICENSE_PLACEHOLDER", text: $licensePlate, onCommit: {
                        viewModel.fetchIdentification(fipeCode: licensePlate)
                    })
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 100)
                        .padding(.bottom)
                    
                    if let identification = viewModel.identification {
                        VStack(alignment: .leading) {
                            IdentificationItem(title: "IDENTIFICATION_ITEM_REFERENCE_MONTH", value: identification.referenceMonth)
                            IdentificationItem(title: "IDENTIFICATION_ITEM_PRICE", value: identification.price)
                            IdentificationItem(title: "IDENTIFICATION_ITEM_BRAND", value: identification.brand)
                            IdentificationItem(title: "IDENTIFICATION_ITEM_MODEL", value: identification.model)
                            IdentificationItem(title: "IDENTIFICATION_ITEM_MODEL_YEAR", value: String(identification.modelYear))
                            IdentificationItem(title: "IDENTIFICATION_ITEM_FUEL", value: identification.fuel)
                            IdentificationItem(title: "IDENTIFICATION_ITEM_LICENSE_PLATE", value: identification.codeFipe)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 15)
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            }
            .frame(height: 300)
            .cornerRadius(20)
            .padding(.top)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .padding([.top], 20)
        .padding([.leading, .trailing], 15)
        .navigationTitle("IDENTIFICATION_NAVIGATION_TITLE")
    }
}
