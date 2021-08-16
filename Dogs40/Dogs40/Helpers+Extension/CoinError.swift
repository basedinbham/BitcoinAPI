//
//  DogError.swift
//  Dogs40
//
//  Created by Delstun McCray on 8/4/21.
//

import Foundation

enum CoinError: LocalizedError {
    
    case invalidURL
    case thrownError(Error)
    case noData
    case unableToDecode
    
    var errorDescription: String {
        switch self {
        case .invalidURL:
            return "The was a server failure."
        case .thrownError(_):
            return "There was an error with our network call."
        case .noData:
            return "There was no data found."
        case .unableToDecode:
            return "Unable to decode given data."
        }
    }
}
