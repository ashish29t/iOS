//
//  GetNewsItemsSource.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

protocol GetNewsItemsSource {
    func getNewsItems() async -> Result<[NewsItem], GetNewsError>
}

class GetNewsItemsSourceStub : GetNewsItemsSource {
    let response: Result<[NewsItem], GetNewsError>
    
    internal init(response: Result<[NewsItem], GetNewsError>) {
        self.response = response
    }
    
    func getNewsItems() async -> Result<[NewsItem], GetNewsError> {
        return response
    }
}
