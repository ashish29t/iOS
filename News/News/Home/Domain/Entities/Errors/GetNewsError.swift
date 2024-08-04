//
//  GetNewsError.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

enum GetNewsError: Error, Identifiable, Hashable, Equatable, LocalizedError {
    var id: Self { self }
    
    case networkError(cause: String)
    case localStorageError(cause: String)
    
    var errorDescription: String? {
        switch self {
        case .networkError(let cause):
            return cause
        case .localStorageError(let cause):
            return cause
        }
    }
}
