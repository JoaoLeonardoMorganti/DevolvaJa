//
//  IdentificationService.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 23/01/24.
//

import Foundation
import Combine

protocol IdentificationServiceProtocol {
    func getIdentification(fipeCode: String) -> AnyPublisher<IdentificationModel, Error>
}

class IdentificationService: IdentificationServiceProtocol {
    let apiClient = URLSessionAPIClient<IdentificationEndpoint>()
    
    func getIdentification(fipeCode: String) -> AnyPublisher<IdentificationModel, Error> {
        return apiClient.request(.getIdentification(fipeCode: fipeCode))
    }
}
