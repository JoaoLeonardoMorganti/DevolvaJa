//
//  IdentificationViewModel.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 23/01/24.
//

import Foundation
import Combine

class IdentificationViewModel: ObservableObject {
    private var cancellables = Set<AnyCancellable>()
    let identificationService: IdentificationServiceProtocol
    
    @Published var identification: IdentificationModel?
    
    init(identificationService: IdentificationServiceProtocol) {
        self.identificationService = identificationService
    }
    
    func fetchIdentification(fipeCode: String) {
        identificationService.getIdentification(fipeCode: fipeCode)
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { data in
            
        }, receiveValue: {[weak self] data in
            self?.identification = data
        }).store(in: &cancellables)
    }
}
