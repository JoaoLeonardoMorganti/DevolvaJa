//
//  IdentificationEndpoint.swift
//  DevolvaJa
//
//  Created by Joao Leonardo Morganti on 23/01/24.
//

import Foundation

enum IdentificationEndpoint: APIEndpoint {
    case getIdentification(fipeCode: String)
    
    var baseURL: URL {
        return URL(string: "https://parallelum.com.br/fipe/api/v2")!
    }
    
    var path: String {
        switch self {
        case .getIdentification(let fipeCode):
            return "/cars/\(fipeCode)/years/2024-1"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .getIdentification:
            return .get
        }
    }
    
    var headers: [String: String]? {
        switch self {
        default:
            return nil
        }
    }
    
    var parameters: [String: Any]? {
        switch self {
        default:
            return nil
        }
    }
}
