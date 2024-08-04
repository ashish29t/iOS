//
//  NewsItemsSourceLocal.swift
//  news
//
//  Created by ashish29t on 04/08/24.
//

import Foundation

protocol NewsItemsSourceLocal {
    func fetchNewsItems() async -> Result<[NewsItem], GetNewsError>
}

class NewsItemsSourceLocalStub : NewsItemsSourceLocal {
    let response: Result<[NewsItem], GetNewsError>
    
    internal init(response: Result<[NewsItem], GetNewsError>) {
        self.response = response
    }
    
    func fetchNewsItems() async -> Result<[NewsItem], GetNewsError> {
        response
    }
}
