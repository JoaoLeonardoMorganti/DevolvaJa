//
//  IdentificationModel.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 23/01/24.
//

import Foundation

import Foundation

struct IdentificationModel: Codable {
    var price: String
    var brand: String
    var model: String
    var modelYear: Int
    var fuel: String
    var codeFipe: String
    var referenceMonth: String
    var vehicleType: Int
    var fuelAcronym: String
    
    init(price: String, brand: String, model: String, modelYear: Int, fuel: String, codeFipe: String, referenceMonth: String, vehicleType: Int, fuelAcronym: String) {
        self.price = price
        self.brand = brand
        self.model = model
        self.modelYear = modelYear
        self.fuel = fuel
        self.codeFipe = codeFipe
        self.referenceMonth = referenceMonth
        self.vehicleType = vehicleType
        self.fuelAcronym = fuelAcronym
    }
}
